+++
title = "PredictDB: Transcriptome Prediction Model Repository"
date = 2020-01-07T09:18:21-06:00
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

# Predictdb

Here you can find transcriptome prediction models for the PrediXcan family of methods: S-PrediXcan, MultiXcan and S-MultiXcan.
 `.db` files are prediction models, usable by all methods.
 `.txt.gz` files are compilations of LD reference for summary-based methods (`S-` prefix).
 S-PrediXcan is meant to use the single-tissue LD reference files ("covariances") appropriate to each model.
 S-MultiXcan uses single-tissue prediction models and a cross-tissue LD reference.


# GTEx v8 models on eQTL and sQTL

We have produced different families of prediction models for sQTL and eQTL,
using several prediction strategies, on GTEx v8 release data.

We recommend MASHR-based models below.
Elastic Net-based are a safe, robust alternative with decreased power.

## MASHR-based models

Expression and splicing prediction models with LD reference data are available in this
[Zenodo repository](https://zenodo.org/record/3518299).

Files:
* [mashr_eqtl.tar](https://zenodo.org/record/3518299/files/mashr_eqtl.tar?download=1): PrediXcan's and S-PrediXcan's support on expression
* [mashr_sqtl.tar](https://zenodo.org/record/3518299/files/mashr_sqtl.tar?download=1): PrediXcan's and S-PrediXcan's support on splicing
* [gtex_v8_expression_mashr_snp_smultixcan_covariance.txt.gz](https://zenodo.org/record/3518299/files/gtex_v8_expression_mashr_snp_smultixcan_covariance.txt.gz?download=1): S-MultiXcan expression's LD reference
* [gtex_v8_splicing_mashr_snp_smultixcan_covariance.txt.gz](https://zenodo.org/record/3518299/files/gtex_v8_splicing_mashr_snp_smultixcan_covariance.txt.gz?download=1): S-MultiXcan splicing's LD reference

**Warning**: these models are based on fine-mapped variants that may occasionally be absent
in a tipical GWAS, and frequently absent in older GWAS.
We have tools to address this, presented
[here](https://github.com/hakyimlab/MetaXcan/wiki/Best-practices-for-integrating-GWAS-and-GTEX-v8-transcriptome-prediction-models).
A tutorial is available [here](https://github.com/hakyimlab/MetaXcan/wiki/Tutorial:-GTEx-v8-MASH-models-integration-with-a-Coronary-Artery-Disease-GWAS).

**Acknowledging these models**: If you use these models in your research, please cite:
* ["Widespread dose-dependent effects of RNA expression and splicing on complex diseases and traits"](https://www.biorxiv.org/content/10.1101/814350v1), Barbeira et al, 2019, preprint
* ["A gene-based association method for mapping traits using reference transcriptome data"](https://www.nature.com/articles/ng.3367), Gamazon et al, 2015, Nature Genetics
* ["Exploring the phenotypic consequences of tissue specific gene expression variation inferred from GWAS summary statistics"](https://www.nature.com/articles/s41467-018-03621-1), Barbeira et al, 2018,  Nature Communications

If you use S-MultiXcan, we ask you to cite:
* ["Integrating predicted transcriptome from multiple tissues improves association detection"](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007889), Barbeira et al, 2019, PLOS Genetics

## Elastic Net

Expression and splicing prediction models with LD references data are available in this
[Zenodo repository](https://zenodo.org/record/3519321#.XfqJz9l7m90).

Files:

* [elastic_net_eqtl.tar](https://zenodo.org/record/3519321/files/elastic_net_eqtl.tar?download=1): PrediXcan's and S-PrediXcan's support on expression
* [elastic_net_sqtl.tar](https://zenodo.org/record/3519321/files/elastic_net_sqtl.tar?download=1): PrediXcan's and S-PrediXcan's on splicing
* [gtex_v8_expression_elastic_net_snp_smultixcan_covariance.txt.gz](https://zenodo.org/record/3519321/files/gtex_v8_expression_elastic_net_snp_smultixcan_covariance.txt.gz?download=1): S-MultiXcan expression's LD reference
* [gtex_v8_splicing_elastic_net_snp_smultixcan_covariance.txt.gz](https://zenodo.org/record/3519321/files/gtex_v8_splicing_elastic_net_snp_smultixcan_covariance.txt.gz?download=1): S-MultiXcan splicing's LD reference


**Acknowledging these models** : If you use these models in your research, we ask you to cite:
* ["The GTEx Consortium atlas of genetic regulatory effects across human tissues"](https://www.biorxiv.org/content/10.1101/787903v1), Aguet et al, 2019, preprint
* ["A gene-based association method for mapping traits using reference transcriptome data"](https://www.nature.com/articles/ng.3367), Gamazon et al, 2015, Nature Genetics
* ["Exploring the phenotypic consequences of tissue specific gene expression variation inferred from GWAS summary statistics"](https://www.nature.com/articles/s41467-018-03621-1), Barbeira et al, 2018,  Nature Communications

If you use S-MultiXcan, we ask you to cite:
* ["Integrating predicted transcriptome from multiple tissues improves association detection"](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007889), Barbeira et al, 2019, PLOS Genetics


# GTEx v7 Expression models

Expression prediction models with LD reference data ar available in this
[Zenodo repository](https://zenodo.org/record/3572799).
The underlying algorithm is Elastic Net.

* [GTEx-V7_HapMap-2017-11-29.tar.gz](https://zenodo.org/record/3572799/files/GTEx-V7_HapMap-2017-11-29.tar.gz?download=1): Expression prediction models and LD reference on single tissues.
* [snp_covariance_v7.txt.gz](https://zenodo.org/record/3572799/files/snp_covariance_v7.txt.gz?download=1): S-MultiXcan's LD compilation

Additional support information and details are available in the Zenodo repository.

**Acknowledging these models**: If you use these models in your research, we ask you to cite:
* ["A gene-based association method for mapping traits using reference transcriptome data"](https://www.nature.com/articles/ng.3367), Gamazon et al, 2015, Nature Genetics
* ["Exploring the phenotypic consequences of tissue specific gene expression variation inferred from GWAS summary statistics"](https://www.nature.com/articles/s41467-018-03621-1), Barbeira et al, 2018,  Nature Communications

If you use S-MultiXcan, we ask you to cite:
* ["Integrating predicted transcriptome from multiple tissues improves association detection"](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007889), Barbeira et al, 2019, PLOS Genetics

# GTEx v6 Expression models

Expression prediction models with LD reference data are available in this
[Zenodo repository](https://zenodo.org/record/3572842#.XfuyLNl7m90).

* [GTEx-V6p-1KG-2016-11-16.tar.gz](https://zenodo.org/record/3572842/files/GTEx-V6p-1KG-2016-11-16.tar.gz?download=1): Expression prediction models and LD reference, using variants defined in 1000 Genomes
* [GTEx-V6p-HapMap-2016-09-08.tar.gz](https://zenodo.org/record/3572842/files/GTEx-V6p-HapMap-2016-09-08.tar.gz?download=1): Expression prediction models and LD reference, using variants defined in Hapmap CEU track
* [snp_covariance_v6p.txt.gz](https://zenodo.org/record/3572842/files/snp_covariance_v6p.txt.gz?download=1): S-MultiXcan LD reference for HapMap models

Additional support information and details are available in the Zenodo repository.

**Acknowledging these models**: If you use these models in your research, we ask you to cite:
* ["A gene-based association method for mapping traits using reference transcriptome data"](https://www.nature.com/articles/ng.3367), Gamazon et al, 2015, Nature Genetics
* ["Exploring the phenotypic consequences of tissue specific gene expression variation inferred from GWAS summary statistics"](https://www.nature.com/articles/s41467-018-03621-1), Barbeira et al, 2018,  Nature Communications

If you use S-MultiXcan, we ask you to cite:
* ["Integrating predicted transcriptome from multiple tissues improves association detection"](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007889), Barbeira et al, 2019, PLOS Genetics

# Models from collaborators and other sources:

## MESA models

Single-tissue expression prediction models with LD reference data are available in this
[Zenodo repository](https://zenodo.org/record/3572815#.XfqOstl7m90).
The underlying algorithm is Elastic Net on MESA multi-ethnic cohort.

These models were presented in ["Genetic architecture of gene expression traits across diverse populations"](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007586), Mogil et al, 2018, PLOS Genetics.
Please cite if you find these useful.

## CommonMind consortium

Single-tissue expression prediction models with LD reference data are available in this
[GitHub repository](https://github.com/laurahuckins/CMC_DLPFC_prediXcan).
The underlying algorithm is Elastic Net.

These models were presented in ["Gene expression imputation across multiple brain regions provides insights into schizophrenia risk](https://www.nature.com/articles/s41588-019-0364-4),
Huckins et al, 2019, Nature Genetics. Please cite if you find these useful.

## EpiXcan Models

Expression prediction models with LD reference data are available in this [website](https://zhangw17.u.hpc.mssm.edu/epixcan/about.php#dl).
The models were trained on Common Mind Consortium, GTEx, and STARNET consortiums.
The underlying algorithm is Elastic Net, informed by epigenetic data.

These models were presented in ["Integrative transcriptome imputation reveals tissue-specific and shared biological mechanisms mediating susceptibility to complex traits"](https://www.nature.com/articles/s41467-019-11874-7),
 Zhaneg et al, 2019, Nature Communications. Please cite if you find these useful.
