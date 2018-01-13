## ---- results='asis'-----------------------------------------------------
# Remove all the packages
rm(list = ls(all = TRUE))

library(BMRBr)


## ------------------------------------------------------------------------
bmrb_download(965, "../download_location")

## ------------------------------------------------------------------------
bmrb_download(c(965, 966, 967), "../download_location")

## ------------------------------------------------------------------------
bmrb_list = collect_ids(to_list = TRUE)
bmrb_list[c(1:10),]

## ------------------------------------------------------------------------
bmrb_table = collect_ids(to_list = FALSE)
bmrb_table[c(1:10),]

