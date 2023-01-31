library(Seurat)

heart_obj <- readRDS(file = 'heart_obj.rds')

heart_obj <- lapply(X = heart_obj, FUN = function(x) {
  x <- NormalizeData(x)
  x <- FindVariableFeatures(x, selection.method = "vst", nfeatures = 2000)
})

features <- SelectIntegrationFeatures(object.list = heart_obj)

heart.anchors <- FindIntegrationAnchors(object.list = heart_obj, anchor.features = features)

heart.integrated <- IntegrateData(anchorset = heart.anchors)

saveRDS(heart.integrated, file = 'heart_integrated.rds')