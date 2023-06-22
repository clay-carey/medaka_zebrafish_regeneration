# Distinct Features of the Regenerating Teleost Heart Uncovered Through Comparative Single-Cell Profiling

Clayton M. Carey, Hailey L. Hollins, Alexis V. Schmid, and James A. Gagnon

Adult humans respond to heart injury by forming a permanent scar, yet other vertebrates are capable of robust and complete cardiac regeneration. Despite progress towards characterizing the mechanisms of cardiac regeneration in fish and amphibians, the large evolutionary gulf between mammals and regenerating vertebrates complicates deciphering which cellular and molecular features truly enable regeneration. To better define these features, we compared cardiac injury responses in zebrafish and medaka, two teleost fish species with differing regenerative abilities, but similar anatomy and relatively recent common ancestry. We used single-cell transcriptional profiling to create a time-resolved comparative cell atlas of injury responses in all major cardiac cell types across both species. With this approach, we identified several key features that distinguish cardiac injury response in the non-regenerating medaka ventricle. By examining immune cell behaviors, we identify altered cell recruitment and a distinct pro-inflammatory gene program in medaka leukocytes, and an absence of the injury-induced interferon response seen in zebrafish. In addition, we find a lack of pro-regenerative signals including nrg1 and retinoic acid from medaka endothelial and epicardial cells. Finally, we identify significant alterations in the myocardial structure in medaka, where they lack embryonic-like primordial layer cardiomyocytes, and fail to employ a cardioprotective gene program shared by regenerating vertebrates. Together, these findings provide new insights on the dynamic evolution of vertebrate regenerative capabilities.

## Explore Data With Shiny app

You can easily explore the single-cell data using our [web-based application](https://clay-carey.shinyapps.io/shinyappmulti/)


### Instructions for running shiny app locally 

We have hosted the application on shinyapps.io, but application usage may be restricted because of hosting limitations. You can run the app locally in R by downloading the files [HERE](https://drive.google.com/file/d/1_ozLnMI0p6lKsDA3-HJK5Kk_g3bUTLNk/view?usp=sharing) 

Before running the app, run the following code to ensure all required packages are installed: 

``` r
reqPkg = c("shiny", "shinyhelper", "data.table", "Matrix", "DT", "hdf5r", 
           "reticulate", "ggplot2", "gridExtra", "magrittr", "ggdendro")
newPkg = reqPkg[!(reqPkg %in% installed.packages()[,"Package"])]
if(length(newPkg)){install.packages(newPkg)}
```

Once installed, extract the .zip file and open the server.R file in Rstudio and click the "run app" button

## Code
R markdown code used to process data and generate all figures for the manuscript can be accessed in the [Final_code folder](https://github.com/clay-carey/medaka_zebrafish_regeneration/tree/master/Figure_code)

## Data

### Raw data
Raw sequencing data for each sample will be available on GEO

### Gene Expression Matricies

Filtered gene expression matricies outputted from cellranger for each sample can be downloaded [HERE](https://drive.google.com/file/d/1xyXq2gEw2FoUiTgZ2ASK8SgNoF0Ty5Ep/view?usp=sharing) 

### Seurat Objects

The following seurat objects are available for download:

1. Minimally processed pre-filtering integrated object containing all cells [DOWNLOAD](https://drive.google.com/file/d/1tfOJucadM0K_H71mBHMEIAkovb3zXBoy/view?usp=sharing)
2. Processed and filtered object containing all passing non-erythroid cells [DOWNLOAD](https://drive.google.com/file/d/1BDY7xhIuDlJBV5UAQ8brCN6rxLN6wtsX/view?usp=sharing)
3. Filtered and Re-clustered immune cells object [DOWNLOAD](https://drive.google.com/file/d/1_g7X8x0v4JgfL6wBZdNZUQbRVKRq1EGa/view?usp=sharing)
4. Filtered and Re-clustered endothelial cells object [DOWNLOAD](https://drive.google.com/file/d/1xfEOwRVPS0TzkYHl_zKJeBceXcNYHLg2/view?usp=sharing)
5. Filtered and Re-clustered epicardial cells object [DOWNLOAD](https://drive.google.com/file/d/14cxubuzqTuU35q_NBlORmunwlXjdGegQ/view?usp=sharing)
6. Filtered and Re-clustered cardiomyocytes object [DOWNLOAD](https://drive.google.com/file/d/1GoV6nmDHoeOnAw68kLYfmUit2XQUK3YR/view?usp=sharing)
7. Filtered and clustered cardiomyocytes (zebrafish uninjured only)[DOWNLOAD]
8. Filtered and clustered cardiomyocytes (medaka uninjured only)[DOWNLOAD]