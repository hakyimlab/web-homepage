+++
title = "Limitations of PrediXcan association results"
date = 2017-11-07T15:24:42-05:00
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

Keep in mind that significant associations shown here do not imply causality. That said, given that PrediXcan is seeking to test the role of gene expression variation on traits and we and others have shown that significant PrediXcan genes are enriched in causal genes, these results should be useful to delve into the mechanisms underlying gene to phenotype associations.

False positives can arise because of several factors

- LD contamination

By computing the probability of LD contamination, we try to reduce false positives due to LD rather than genuine colocalization of trait and expression causal variants. Filtering out genes with high probability of independent signals (P3>0.5) would reduce the number of hits due to LD contamination.

- Co regulation

Many loci show regulation of multiple genes. PrediXcan is not able to distinguish between truly causal and co-regulation but non causal genes.

- Mismatched LD between study, reference, and training sets

Misspecified LD can lead to false positives (for example if LD in the study population is much higher than in the reference population, highly correlated modestly significant SNPs may be considered to be independent evidence of association, leading to highly significant gene-level association). They are also needed for combining results across multiple tissues, or to run conditional analysis.
