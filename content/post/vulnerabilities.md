+++
title = "Vulnerabilities of the 'Vulnerabilities of transcriptome wide association studies' argument"
date = 2017-11-01T15:35:42-05:00
draft = true

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

A strikingly large number of accomplished researchers seem to interpret significance of a test as proof that the hypothesis is true. Thus it is good to remind ourselves that association does not imply causation.

Wainberg et al’s recent preprint “Vulnerabilities of transcriptome wide association studies” describe limitations of TWAS approaches. A thoughtful response was written by Sasha Gusev ([link](http://sashagusev.github.io/2017-10/twas-vulnerabilities.html)).

Below are our responses to some of the claims of the paper (Wainberg et al claims are in indented gray text).

> PrediXcan/TWAS associations do not imply causality

Yes, we have explicitly stated that we do not claim causality but agree that the message needs to be emphasized.

> TWAS is vulnerable to find multiple associated genes because of co-regulation

 Yes, when a GWAS lead SNP is associated with the expression of several local co-regulated genes, TWAS will yield multiple associated genes. In the same way it is challenging to prove causality, it is also challenging to prove that an associated gene has no causal role. A few examples where we may be relatively confident about causality or the opposite cannot be used to dismiss our approach as done in this manuscript.

 No one would argue that a TWAS result implicating multiple local genes should be interpreted as meaning that all of those genes are likely to be contributing to the trait. But assuming that a single gene is always at the root of a GWAS or TWAS signal also seems unnecessarily restrictive.

> “TWAS exhibits instability when tissue/expression panel is changed”

The expectation that an association found in one tissue should also be found in another one seems to be the problem. A better way to describe these results is that when a gene exhibits tissue-specific genetic regulation, we cannot be surprised to see tissue-specific phenotype associations. This is, we would argue, a feature not a bug.

When the regulatory mechanism is highly context specific, it is possible and likely that none of the reference transcriptome dataset has captured it. This is not a limitation of the approach, but rather of the data available for investigation. We cannot build predictive models without training data, and genes expressed in a single cell type that is poorly represented in available tissues will not be well interrogated with the method, which has been widely acknowledged in the original publications as a limitation of the method.

> “False positive rate is high but unquantifiable”

This sentence is internally contradictory. But more broadly, would Wainberg et al. consider traditional GWAS to have a high false positive rate due to the large number of associations attributable to LD?

> TWAS is simply a weighted burden test

PrediXcan/TWAS seeks to test the mediating role of gene expression changes on complex traits. Because we are using natural variation, there are many confounders, such as co-regulation and LD-contamination (GWAs and eQTL causal variants are distinct but in LD), which need to be taken into account but the approach is more than a simple weighted burden test.


Our main concern about this paper is that its negative tone dismisses the utility of PrediXcan/TWAS beyond that of a burden test based on vulnerable arguments. Many groups including ourselves are working on devising ways to mitigate the known limitations of PrediXcan/TWAS but a negative message may force many to abandon this route. We welcome the critique as long as it serves as motivation to continue improving the PrediXcan/TWAS framework.

***
Contributed by Hae Kyung Im and Nancy J Cox
