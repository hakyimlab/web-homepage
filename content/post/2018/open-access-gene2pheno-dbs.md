+++
title = "How to query our gene2pheno database directly"
date = 2018-01-24T10:43:10-06:00
draft = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = []
categories = []

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = ""
caption = ""

+++

We have opened direct access to the gene2pheno database, where we are hosting the PrediXcan results of close to 3000 phenotypes (from public GWAS meta analysis results and UKBiobank results from [Ben Neale/HAIL team](http://www.nealelab.is/blog/2017/7/19/rapid-gwas-of-thousands-of-phenotypes-for-337000-samples-in-the-uk-biobank)).


Below are R functions that will allow you access and query the database. These results are based on GTEx V6p models and details of the analysis can be found in our preprint [link to preprint](https://doi.org/10.1101/045260) in press now in Nature Communications.

Usual disclaimers apply. This is provided for your convenience and with the hope of being useful. We provide no guarantee of accuracy etc...

-----
### Via PostgreSQL

The code below may not be completely self explanatory. We are working on the documentation.

```{R}
## First run the preliminary command further down

## this will fetch all associations for Schizophrenia
data = query.pheno("pgc_scz")

## this will fetch all associations for FTO
data = query.gene("FTO")

## these rather small tables will be handy

phenotb = dbGetQuery(db,"select * from pheno")
tissuetb = dbGetQuery(db,"select * from tissue")
genetb = dbGetQuery(db,"select * from gene")
phenoinfo = phenotb %>% inner_join(dbGetQuery(db, "select * from pheno_info"),by=c("id"="pheno_id") )
```

You will need to run the following preliminary commands first

```{R}
library(tidyverse)

## Connect to DB
##install.packages('RPostgreSQL')
library('RPostgreSQL')
drv <- dbDriver("PostgreSQL")


db  <-   dbConnect(drv, host="gene2pheno.ccsriudvs1y0.us-east-1.rds.amazonaws.com", port="5432", dbname="release_2017_09_14", user="metaxcan_ro", password="M3t4Xc4nR0")

db.uk <- dbConnect(drv, host="gene2pheno.ccsriudvs1y0.us-east-1.rds.amazonaws.com", port="5432",
dbname="ukb_neale_2017_10_14", user="metaxcan_ro", password="M3t4Xc4nR0")

## Currently, gene2pheno.org is serving results based on GTEx V6p. Expanded list of phenotypes can be retrieved using this dbname=“public_gwas_v6p_hapmap_2017_12_04”

## Query functions
query0 = paste0(  
    "SELECT "
    ," g.gene_name"
    ,", m.zscore"
    ,", m.effect_size"
    ,", m.pval"
    ,", p.tag as phenotype"
    ,", t.tissue as tissue"
    ,", m.pred_perf_R2"
    ,", m.pred_perf_pval"
    ,", m.pred_perf_qval"
    ,", m.n_snps_used"
    ,", m.n_snps_model"
    ,", mi.p_smr"
    ,", mi.p_heidi"
    ,", mi.coloc_p0"
    ,", mi.coloc_p1"
    ,", mi.coloc_p2"
    ,", mi.coloc_p3"
    ,", mi.coloc_p4"
    ,", tr.p as twas_pvalue "
    ,", g.gene"
    ," FROM gene AS g "
    ," INNER JOIN metaxcan_result AS m ON g.id = m.gene_id "
    ," INNER JOIN tissue AS t ON t.id = m.tissue_id "
    ," INNER JOIN pheno AS p ON p.id = m.pheno_id "
    ," LEFT JOIN metaxcan_result_info as mi on m.id = mi.metaxcan_result_id "
    ," LEFT JOIN twas_relationship as trr ON m.id = trr.metaxcan_result_id "
    ," LEFT JOIN twas_result as tr ON trr.twas_result_id = tr.id "    
	)

query.pheno = function(pheno,Rthres=0.,fdb=db)
{
  query =  paste0(query0, " WHERE p.tag like '" , pheno  ,"%' " )
  if(Rthres>0) query = paste0(query, " and m.pred_perf_R2 >= " , Rthres)
  dbGetQuery(fdb,query) %>% arrange(pval)
}

query.tissue = function(tissue,Rthres=0.,fdb=db)
{
  query =  paste0(query0," WHERE t.tissue like '" , tissue,  "%' " )
  if(Rthres>0) query = paste0(query, " and m.pred_perf_R2 >= ", Rthres)
  dbGetQuery(fdb,query)
}

query.gene = function(genename,Rthres=0.,fdb=db)
{
  query =  paste0(query0," WHERE g.gene_name like '", genename,  "%' " )
  if(Rthres>0) query = paste0(query, " and m.pred_perf_R2 >= ", Rthres)
  dbGetQuery(fdb,query) %>% arrange(pval)
}

query_multi_tissue_base <- paste0( "SELECT ",
  " p.tag as phenotype,",
  " g.gene,",
  " g.gene_name,",
  " mt.pvalue,",
  " mt.n,",
  " mt.n_indep,",
  " mt.p_i_best,",
  " mt.p_i_worst,",
  " mt.eigen_max,",
  " mt.eigen_min",
  " FROM gene AS g ",
  " INNER JOIN multi_tissue_result AS mt ON g.id = mt.gene_id ",
  " INNER JOIN pheno AS p ON p.id = mt.pheno_id " )

query.pheno.mult = function(pheno,fdb=db)
{
  query =  paste0(query_multi_tissue_base, " WHERE p.tag like '" , pheno  ,"%' " )
  dbGetQuery(fdb,query) %>% arrange(pvalue)
}

query.gene.mult = function(genename,Rthres=0.,fdb=db)
{
  query =   paste0(query_multi_tissue_base," WHERE g.gene_name like '", genename,  "%' " )
  dbGetQuery(fdb,query) %>% arrange(pvalue)
}
```
-----
### Via BigQuery
If you have a Google Cloud Platform account (you can get a free account with a small credit included in Google Cloud) you can query directly from the webpages

- [PrediXcan Association UKBiobank](https://bigquery.cloud.google.com/dataset/imlab-public:gene2pheno)
- [Predictdb prediction models](https://bigquery.cloud.google.com/dataset/imlab-public:predictdb)
- [Heritability Estimates](https://bigquery.cloud.google.com/dataset/imlab-public:genarch) from this [paper](http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1006423)

----
### Via gene2pheno.org

Of course you can also query using our app [link](http://gene2pheno.org)

----
If you find our resources useful please cite our papers so that we can continue maintaining them.

## Reference
- Gamazon ER†, Wheeler HE†, Shah KP†, Mozaffari SV, Aquino-Michaels K,
Carroll RJ, Eyler AE, Denny JC, Nicolae DL, Cox NJ, Im HK. (2015)
**A gene-based association method for mapping traits using reference
transcriptome data**. Nat Genet. doi:10.1038/ng.3367.
([Link to paper](http://www.nature.com/ng/journal/v47/n9/full/ng.3367.html),
[Link to Preprint on BioRxiv](http://biorxiv.org/content/early/2015/06/17/020164))


- Alvaro N. Barbeira, Scott P. Dickinson, Jason M. Torres, Rodrigo Bonazzola, Jiamao Zheng, Eric S. Torstenson, Heather E. Wheeler, Kaanan P. Shah, Todd Edwards, Tzintzuni Garcia, GTEx Consortium, Dan Nicolae, Nancy J. Cox, Hae Kyung Im (2017) **Exploring the phenotypic consequences of tissue specific gene expression variation inferred from GWAS summary statistics** [link to preprint](http://dx.doi.org/10.1101/045260) In press in Nature Communications 2018

- Heather E Wheeler, Kaanan P Shah, Jonathon Brenner, Tzintzuni Garcia,
Keston Aquino-Michaels, GTEx Consortium, Nancy J Cox, Dan L Nicolae, Hae
Kyung Im. (2016) **Survey of the Heritability and Sparsity of Gene
Expression Traits Across Human Tissues**.
[link to paper](http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1006423)


----
**Disclaimer:** the models are provided "as is", with the hope that they may be of use, without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. in no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the models or the use or other dealings in the models.
