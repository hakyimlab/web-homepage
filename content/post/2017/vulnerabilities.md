+++
title = "Vulnerabilities of the 'Vulnerabilities of transcriptome wide association studies' argument"
date = 2017-11-07T13:24:42-05:00
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

PrediXcan and other transcriptome wide association study (TWAS) methods discover and prioritize genes based on a functional mechanism --regulation of gene expression. We agree that we have to temper over-enthusiasm, but Wainberg et al's paper could represent a backlash to the enthusiasm that the community has for this approach, which we believe is well placed.

Below are our responses to some of the statements of the paper.

> PrediXcan/TWAS associations do not imply causality

Yes, we have explicitly stated that we do not claim causality but agree that the message needs to be emphasized. However, the over-interpretation of TWAS results as causal (which itself seems overstated by Wainberg et al), is precisely because of the exciting aspect of TWAS as association testing ‘through a lens’ of a particular functional mechanism that we believe is very important, namely, regulation of gene expression.

> TWAS is vulnerable to find multiple associated genes because of co-regulation

Yes, when a GWAS lead SNP is associated with the expression of several local co-regulated genes, TWAS will yield multiple associated genes. No one would argue that a TWAS result implicating multiple local genes should be interpreted as meaning that all of those genes are likely to be contributing to the trait. But assuming that a single gene is always at the root of a GWAS or TWAS signal also seems unnecessarily restrictive. Molecular biology and model organism genetics would suggest that allelic heterogeneity should be the norm. Although admittedly we don’t see huge evidence for it in complex trait GWAS, we do see it in eQTL data and arguably this is a reason why TWAS discovers new genes.

A different source of false positive associations (not considered by Wainberg et al) is LD contamination. This phenomenon occurs, for example, when a variant alters expression of a gene but a different variant is causing changes in the phenotype but both variants are in LD. Unlike the coregulation confounding, which can only be teased out via wet lab experiments, LD contamination may be quantified and corrected. As for GWAS loci, fine mapping and conditional analysis may be used to addressed this issue.

> “TWAS exhibits instability when tissue/expression panel is changed”

The expectation that an association found in one tissue should also be found in another one seems to be the problem. A better way to describe these results is that when a gene exhibits tissue-specific genetic regulation, we cannot be surprised to see tissue-specific phenotype associations. This is, we would argue, a feature not a bug.

When the regulatory mechanism is highly context specific, it is possible and likely that none of the reference transcriptome dataset has captured it. This is not a limitation of the approach, but rather of the data available for investigation. We cannot build predictive models without training data, and genes expressed in a single cell type that is poorly represented in available tissues will not be well interrogated with the method, which has been widely acknowledged in the original publications as a limitation of the method.

> “False positive rate is high but unquantifiable”

Would Wainberg et al. consider traditional GWAS to have a high false positive rate due to the large number of associations attributable to LD?

> TWAS is simply a weighted burden test

We agree that it is a weighted burden test analytically, but of course the weights have meaning, and that is the effect of the variants on gene expression. Therefore, this weighted burden test is exactly what it purports to be: an association test of a trait with genetically regulated expression.

This post is the results of discussions among (in alphabetic order)
Nancy Cox,
Eric Gamazon,
Laura Huckins,
Hae Kyung Im,
Douglas  Ruderfer,
Pamela Sklar, and
Eli Stahl.
