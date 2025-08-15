rm(list=ls())
library("tidyverse")
library("ape")
library("phytools")
library('picante')


#### Read in genus phylogenetic tree from Henriquez Piskulich, Patricia Andrea; Hugall, Andrew F.; Stuart-Fox, Devi (2023). A supermatrix phylogeny of the world’s bees (Hymenoptera: Anthophila) [Dataset]. Dryad. https://doi.org/10.5061/dryad.80gb5mkw1

mytree <- read.tree('data/BEE_mat7gen_p8pmAa_fst.nwk')

mytree <- bee_tree
# Extract the genus from the tip labels
# Assuming the format is "genus_species~~family~~subfamily~tribe"
mytree$tip.label <- sub("_.*", "", mytree$tip.label)
mytree$tip.label <- sub("~.*", "", mytree$tip.label)

#unrooted tree, includes branch lengths, 433 tips and 431 internal nodes
mytree


### read in the globi bee data
#genera = read_csv('genera-list.csv')


###root with apoid wasp outgroups
outgroups <- c("Philanthus","Pulverro","Bembix","Tachysphex","Cerceris")
workingtree=root(mytree,outgroup=outgroups, resolve.root = TRUE)
workingtree=as.phylo(mytree)

##Make ultrametric
workingtree=chronos(workingtree, lambda = 0.001, control = chronos.control(maxit = 10000000, eval.max = 100000000))
is.ultrametric(workingtree)

#remove outgroups unless you have morphometric data for them
keep = c("Osmia","Hesperapis", 'Bombus',"Andrena","Melitta","Perdita",'Colletes','Megachile','Lasioglossum')
rm_genera = workingtree$tip.label[!workingtree$tip.label %in% keep]
trimmed_tree = drop.tip(workingtree,rm_genera)

plot.phylo(trimmed_tree, cex = .1, main="Henriquez Piskulich et. al")
p <- ggtree(trimmed_tree) + geom_tiplab()
print(p)

#check labels
trimmed_tree$tip.label

#check if ultrametric
is.ultrametric(trimmed_tree)

#check branch lengths
branch_lengths <- trimmed_tree$edge.length

#plot and write new tree
plot.phylo(trimmed_tree, cex = .7, main="HP")

# Write to Nexus format
write.nexus(trimmed_tree, file="mytree.nex")



