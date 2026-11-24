# Wing-Geometric-Morphometrics

## Wing venation reflects phylogenetic divergence and allometric scaling in bees

Jorge De La Cruz, Charles N. Thrift, Madeleine M. Ostwald, Katja C. Seltmann 

University of California Santa Barbara, Cheadle Center for Biodiversity and Ecological Restoration

https://doi.org/10.5281/zenodo.20694961

## Abstract
Wing venation is widely used in insect systematics, but the extent to which bee wing morphology reflects phylogenetic divergence, taxonomic identity, and body-size scaling remains poorly understood. Here, we used geometric morphometrics to quantify forewing venation across 17 bee species representing 17 genera and five families. We placed nine homologous landmarks on wing vein intersections and analyzed shape variation among species, subfamilies, and families. We also evaluated phylogenetic signal in overall wing shape and individual landmarks, compared a morphology-inferred tree with a molecular reference phylogeny, and examined the relationship between wing shape and intertegular distance, a proxy for body size.

Wing morphology distinguished taxa with high classification accuracy at the species, subfamily, and family levels. Landmark data exhibited phylogenetic signal, although its strength varied among individual landmarks, and the morphology-inferred tree showed moderate concordance with the molecular reference phylogeny. Intertegular distance explained a substantial proportion of variation in the primary canonical variate and was significantly associated with multivariate wing shape, even after accounting for phylogenetic relatedness. These findings suggest that bee forewing venation contains taxonomic and phylogenetic information, but that its morphological variation is also influenced by body-size scaling. Our results highlight the importance of considering allometry and landmark configuration when applying geometric morphometrics to wing venation in insect systematics and support its use as a complementary tool for bee identification, comparative morphology, and studies of evolutionary divergence.


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
|taxa.csv| Taxonomy table |

## Data Processing & Analysis
In [R/data](https://github.com/JorgeDeLaCruz93/Wing-Geometric-Morphometrics/tree/master/R/data) 

_**R Objects**_	are italized and bolded

| Input  | Analysis / Transformation  | Output |
| :------------ |:---------------| :---------------|
|bee_wings2.TPS | Generalized Procrustes Analysis (GPA) | tpsGPA.csv |
|tpsGPA.csv + bee_metadata4.csv | Merge landmark data with metadata | LM_Data.csv |
|ITD_covariates2.csv |Merge landmark data with ITD data | subset_LM.csv |
|subset_LM.csv | Multivariate Analysis Of Variance (MANOVA) | _**fitm_genus**_ |
|subset_LM.csv | Discriminant Analysis of Principal Components (DAPC) | _**dapc_2**_ |
|subset_LM.csv | Canonical Variate Analysis (CVA) | _**cva.1**_ |
|BEE_mat7gen_p8pmAa_fst.nwk | Prune phylogenetic tree | bee_tree.nex |
|bee_tree.nwk | Calculate phylogenetic distances | phylo_distances.csv |
|_cva.1$groupmeans_ | Calculate phylogenetic signal (Blomberg's K)  | **physig_LMs_K**  |
|_cva.1$groupmeans_ | Calculate phylogenetic signal effect size (Z) | **physig_LMs** |
|_cva.1[["Dist"]][["GroupdistMaha"]]_ | Neighbor-joining (NJ) Tree Reconstruction | nj_tree.nwk |
|_cva.1[["Dist"]][["GroupdistMaha"]]_ | UPGMA (Unweighted Pair Group Method with Arithmetic mean) Tree Reconstruction | upgma_tree.nwk  |
| bee_tree.nwk / nj_tree.nwk / upgma_tree.nwk  | Quartet Tree Similarity | _RefvsNJ_ / _RefvsUPGMA_ / _NJvsUPGMA_ |
|_cva.1$CVscores_| Allometric Linear Regression |ITD_regession |
|_subset_LM.csv_|Ordinary Least Squares (OLS) Regression| **fit_ols** |
|_subset_LM.csv_|Phylogenetic Generalised Least Squares (PGLS) Regression| **fit_pgls** |




