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
|ITD_covariates2.csv | Specimen ITD data |
|BEE_mat7gen_p8pmAa_fst.nwk| Genus level phylogeny from Henríquez-Piskulich et al. (2024)|
|tpsGPA.csv | Procrustes aligned landmark coordinates |
|LM_Data.csv| Merged GPA landmark and metadata|
|subset_data.csv| Subset of 10 wings per genera|
|bee_tree.nex | Nexus format pruned phylogeny |
|phylo_distances.csv | Cophenetic (phylogenetic) distances from the phylogenetic tree |
|GM_Data_subset.csv | Mean LM values per genus |

## Data Analysis
In [R/data](https://github.com/JorgeDeLaCruz93/Wing-Geometric-Morphometrics/tree/master/R/data) 
| Input  | Analysis  | Output |
| :------------ |:---------------| :---------------|
|bee_wings2.TPS | Generalized Procrustes Analysis (GPA) | tpsGPA.csv |
|tpsGPA.csv bee_metadata4.csv | Merge landmark data with metadata | LM_Data.csv |
| ITD_covariates2.csv |Merge landmark data with ITD data | subset_ITD |
| | Multivariate Analysis Of Variance (MANOVA) | |
| | Discriminant Analysis of Principal Components (DAPC) | |
| BEE_mat7gen_p8pmAa_fst.nwk | Prune phylogenetic tree | bee_tree.nex |
| | Calculate phylogenetic distances | phylo_distances.csv |
| | Canonical Variate Analysis (CVA) |   |
|  | Calculate Pagel’s λ and Blomberg's K  |  |
|  | Phylogenetic Tree Reconstruction |  |
| | Phylogenetic Tree Similarity | |
| | Allometric Linear Regression | |

