# 10X Genomics PBMC data set. 2700 cells sequenced by Illumina nextseq500
install.packages('Seurat')
yes
library(dplyr)
library(Seurat)
library(patchwork)
#Load PBMC dataset
pbmc.data <- Read10X(data.dir = "~/filtered_gene_bc_matrices/hg19")
# Initialise the seurat object with raw data
pbmc <- CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells=3, min.features=200)                     
pbmc  
#Exploring count matrix genes in first 30 cells
pbmc.data[c("CD3D", "TCL1A", "MS4A1"), 1:30]