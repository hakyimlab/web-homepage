# Predictdb

Transcriptome prediction models for the PrediXcan family of methods: S-PrediXcan, MultiXcan and S-MultiXcan.
 `.db` files are prediction models, usable by all methods. 
 `.txt.gz` files are LD-compilations for summary-based methods (`S-` prefix).
 S-PrediXcan is meant to use the single-tissue LD-compilation ("covariance") appropriate to each model.
 S-MultiXcan uses single-tissue prediction models and a cross-tissue LD-compilation.


# GTEx v8 models on eQTL and sQTL

We have produced different families of prediction models for sQTL and eQTL,
using several prediction strategies, on GTEx v8 release data.

We recommend MASHR-based models below.
Elastic Net-based are a safe, robust alternative with decreased power.

## MASHR-based models

Expression and splicing prediction models with LD-compilations data are available in this 
[Zenodo repository](https://zenodo.org/record/3518299).

Look for the following files:

```
mashr_eqtl.tar                                              # PrediXcan and S-PrediXcan on expression
mashr_sqtl.tar                                              # PrediXcan and S-PrediXcan on splicing
gtex_v8_expression_mashr_snp_smultixcan_covariance.txt.gz   # S-MultiXcan expression LD
gtex_v8_splicing_mashr_snp_smultixcan_covariance.txt.gz     # S-MultiXcan splicing LD
```

These models are presented in this [preprint](https://www.biorxiv.org/content/10.1101/814350v1)
(GWAS subgroup of the GTEx Consortium).

**Warning**: these models are based on fine-mapped variants that may occasionally be absent
in a tipical GWAS, and frequently absent in older GWAS.
We have tools to address this, presented 
[here](https://github.com/hakyimlab/MetaXcan/wiki/Best-practices-for-integrating-GWAS-and-GTEX-v8-transcriptome-prediction-models).
A tutorial is available [here](https://github.com/hakyimlab/MetaXcan/wiki/Tutorial:-GTEx-v8-MASH-models-integration-with-a-Coronary-Artery-Disease-GWAS).
 

## Elastic Net

Expression and splicing prediction models with LD-compilations data are available in this
[Zenodo repository](https://zenodo.org/record/3519321#.XfqJz9l7m90).

Look for the following:

```
elastic_net_eqtl.tar                                              # PrediXcan and S-PrediXcan on expression
elastic_net_sqtl.tar                                              # PrediXcan and S-PrediXcan on splicing
gtex_v8_expression_elastic_net_snp_smultixcan_covariance.txt.gz   # S-MultiXcan expression LD
gtex_v8_splicing_elastic_net_snp_smultixcan_covariance.txt.gz     # S-MultiXcan splicing LD
```

These models were presented in this [preprint](https://www.biorxiv.org/content/10.1101/787903v1).

# GTEx v7 Expression models

Expression prediction models with LD-compilation data ar available in this
[Zenodo repository](https://zenodo.org/record/3572799). 
The underlying algorithm is Elastic Net.

```
GTEx-V7_HapMap-2017-11-29.tar.gz    # Expression prediction models and LD-Compilation
snp_covariance_v7.txt.gz            # S-MultiXcan LD compilation
```

# GTEx v6 Expression models

Expression prediction models with LD-compilations data are available in this
[Zenodo repository](https://zenodo.org/record/3572799). 

```
GTEx-V6p-1KG-2016-11-16.tar.gz     # Expression prediction models and LD-Compilation, using variants defined in 1000 Genomes
GTEx-V6p-HapMap-2016-09-08.tar.gz  # Expression prediction models and LD-Compilation, using variants defined in Hapmap CEU track
snp_covariance_v6p.txt.gz          # S-MultiXcan LD compilation
```

The single-tissues models were presented in this [article](https://www.nature.com/articles/s41467-018-03621-1).

S-MultiXcan LD was presented in this [article](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007889).

# External contributions:

## MESA models

Single-tissue expression prediction models with LD-compilations data are available in this
[Zenodo repository](https://zenodo.org/record/3572815#.XfqOstl7m90). 
The underlying algorithm is Elastic Net on MESA multi-ethnic cohort. 
 
Models presented in [this](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007586) article.

## CommonMind consortium

Single-tissue expression prediction models with LD-compilations data are available in this
[GitHub repository](https://github.com/laurahuckins/CMC_DLPFC_prediXcan).
The underlying algorithm is Elastic Net.

These models were presented in [this article](https://www.ncbi.nlm.nih.gov/pubmed/30911161).


## EpiXcan Models

Expression prediction models with LD-compilations data are available in this [website](https://zhangw17.u.hpc.mssm.edu/epixcan/about.php#dl).
The models were trained on Common Mind Consortium, GTEx, and STARNET consortiums.
The underlying algorithm is Elastic Net, informed by epigenetic data.

These models were presented in [this article](https://www.nature.com/articles/s41467-019-11874-7).
