+++
title = "GTEx V8 Model Release"
date = 2019-12-11T13:31:33-06:00
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

We have recently published a new set of prediction models trained on GTEx v8 data (as part of efforts detailed in this preprint). We have overhauled the model construction, incorporating posterior inclusion probabilities and global patterns of tissue sharing, while also benefiting from larger sample sizes. We cover both expression and alternate splicing mechanisms. We are very excited about these new models and the potential for new discoveries. However, these models require additional GWAS preprocessing in some public GWAS studies, which we describe here.

We are happy to announce the user-friendly tutorial and detailed documentation.

Our new recommended models use fine-mapped variants (as computed by DAP-G). These variants have a high probability of being causal for QTL. The model effect sizes are computed leveraging cross-tissue patterns with MASHR. These new models are parsimonious, efficient, available for more genes, and have many benefits like improved rate of colocalized associations.

However, the fine-mapped variants are often missing in older GWAS, lack an rsid, and GTEx v8 is defined on hg38 genome assembly. So, additional GWAS preprocessing may be required to fully exploit the new models. As most current GWAS are defined on older genome assemblies like hg19 or hg18, "harmonizing" variants between assemblies is required. Additionally, a particular GWAS' genotyping platform and imputation techniques might have poor intersection with GTEx v8 variants, so that imputation of missing variants is recommended. We have implemented a rich set of tools, documented in the following.

For users interested in incorporating the latest GTEx v8 MASHR models, we provide:

0) GTEx v8 MASHR PrediXcan models and S-MultiXcan support in this link.
(look for mashr_eqtl.tar, mashr_sqtl.tar, gtex_v8_expression_mashr_snp_smultixcan_covariance.txt.gz,
Gtex_v8_splicing_mashr_snp_smultixcan_covariance.txt.gz therein)

1) A "best practices" guide summarising harmonization and (summary statistics) imputation,
with some S-PrediXcan performance analysis on GWAS from hg17, hg18, and hg19. Link here!

2) An in-depth tutorial showing all required steps to run S-PrediXcan and S-MultiXcan on a Coronary artery Disease GWAS defined on hg19. Tutorial here. Complete data sample here.

3) For users interested in individual-level PrediXcan, your input genotype files must now contain gtex ids instead of rsids. You should refer to the GTEx variant lookup table (from the GTEx portal: variant lookup) and map your variants appropriately. Feel free to use pre-computed mapping tables for different genome assemblies available in the tutorial from 2)

Finally, we also provide Elastic Net models trained on GTEx v8 data (link). These models are provided for compatibility reasons but are suboptimal.

We are hoping these new releases will prove useful in your research. Please let us know of any comments or improvements we can make in the documentation.

Sincerely,

Alvaro Barbeira on behalf of the PrediXcan Team
