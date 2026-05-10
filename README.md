# Wing-Geometric-Morphometrics

## Wing venation reflects phylogenetic divergence and allometric scaling in bees

Jorge De La Cruz, Charles N. Thrift, Madeleine M. Ostwald, Katja C. Seltmann 

University of California Santa Barbara, Cheadle Center for Biodiversity and Ecological Restoration

https://doi.org/10.5281/zenodo.16883838

## Abstract
Wing venation characteristics are fundamental to taxonomic delimitation and classification in insect systematics, yet traditional approaches to analyzing these complex morphological traits are difficult and time-consuming. These challenges limit the pace and accessibility of research assessing insect biodiversity and the characterization of ecological morphotypes. Although bees (Hymenoptera: Anthophila) exhibit relatively conserved wing morphology, the variation between lineages remains poorly understood. In this study, we apply geometric morphometrics to investigate divergence in wing morphology for taxonomic identification and phylogenetic inference. Nine homologous landmarks plotted on wing vein intersections allow for the quantification and comparison of wing shape across 20 species and spanning 5 families. These landmarks have previously been shown to differentiate congeneric species and conspecific populations in prior exploratory studies.

Our results demonstrate that wing shape alone can reliably distinguish taxa at multiple hierarchical levels (species, genus, subfamily, and family), with increasing morphological divergence among more distantly related lineages. Phylogenetic analysis of the morphometric data reveals strong concordance between wing morphology and evolutionary relationships. Additionally, intertegular distance (a proxy for body size) correlates with divergence in wing morphology, suggesting potential allometric effects of bee body size on wing structure. These findings underscore the utility of geometric morphometrics for inferring the phylogenetic placement of indeterminate taxa and highlight its practical value as an efficient tool for species identification based solely on wing venation. 

## Description of data
In [R/data](https://github.com/JorgeDeLaCruz93/Wing-Geometric-Morphometrics/tree/master/R/data) 
| File Name  | Description  | 
| :------------ |:---------------|
|bee_wings2.TPS | Wing venation landmark coordinates created in tpsdig2|
|bee_metadata4.csv | Bee specimen metadata |
|tpsGPA.csv | Procrustes aligned landmark coordinates |
|LM_Data.csv| Merged GPA landmarks and metadata|
|subset_data.csv| Subset of landmark w/ 10 wings per genera|
|ITD_covariates2.csv | Specimen ITD data |
|subset_LM.csv | Subset of landmark data with ITD measurements|
|CV_ITD_data.csv | Canonical variate data with ITD measurements|
|BEE_mat7gen_p8pmAa_fst.nwk| Genus level phylogeny from Henríquez-Piskulich et al. (2024)|
|phylo_distances.csv | Cophenetic phylogenetic distances from the reference phylogeny |
|bee_tree.nwk | Newick format pruned reference phylogeny |
|bee_tree.nex | Nexus format pruned reference phylogeny |
|nj_tree.nwk | Newick format Neighbor-Joining (NJ) tree reconstruction from Mahalanobis Distance |
|upgma_tree.nwk | Newick format UPGMA tree reconstruction from Mahalanobis Distance |

## Data Processing & Analysis
In [R/data](https://github.com/JorgeDeLaCruz93/Wing-Geometric-Morphometrics/tree/master/R/data) 

_**R Objects**_	are italized and bolded

| Input  | Analysis / Transformation  | Output |
| :------------ |:---------------| :---------------|
|bee_wings2.TPS | Generalized Procrustes Analysis (GPA) | tpsGPA.csv |
|tpsGPA.csv + bee_metadata4.csv | Merge landmark data with metadata | LM_Data.csv |
|ITD_covariates2.csv |Merge landmark data with ITD data | subset_LM.csv |
|subset_LM.csv | Multivariate Analysis Of Variance (MANOVA) | fitm_genus |
|subset_LM.csv | Discriminant Analysis of Principal Components (DAPC) | _**dapc_2**_ |
|subset_LM.csv | Canonical Variate Analysis (CVA) | _**cva.1**_ |
|BEE_mat7gen_p8pmAa_fst.nwk | Prune phylogenetic tree | bee_tree.nex |
|bee_tree.nwk | Calculate phylogenetic distances | phylo_distances.csv |
|_**cva.1$groupmeans**_ | Calculate phylogenetic signal quantified by Pagel’s λ | _**lambda_result**_ |
|_**cva.1$groupmeans**_ | Calculate phylogenetic signal quantified by Blomberg's K  | _**K_result**_ |
|_**cva.1[["Dist"]][["GroupdistMaha"]]**_ | Neighbor-joining (NJ) Tree Reconstruction | nj_tree.nwk |
|_**cva.1[["Dist"]][["GroupdistMaha"]]**_ | UPGMA (Unweighted Pair Group Method with Arithmetic mean) Tree Reconstruction | upgma_tree.nwk  |
| bee_tree.nwk / nj_tree.nwk / upgma_tree.nwk  | Quartet Tree Similarity | _**RefvsNJ**_ / _**RefvsUPGMA**_ / _**NJvsUPGMA**_ |
|_**cva.1$CVscores**_| Allometric Linear Regression |ITD_regession |


