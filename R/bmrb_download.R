#' bmrb_download
#'
#' Main function that download the BMRB file from www.bmrb.wisc.edu repo. It will downoad file in nmr-star3.1 format.
#'
#' @param id_list  (Required) A list of file ids that are corresponding to the requested files.
#' @param output_dir (Required) Location were downloaded file will be saved.
#' @param base_url Default location is http://www.bmrb.wisc.edu/ftp/pub/bmrb/entry_lists/nmr-star3.1/.
#' @param verbose Boolean parameter. If setted to be "True", the downloader will output detailed results in the console.
#'
#'
#' @return Save file in the output_dir location
#' @export bmrb_download




bmrb_download <- function(id_list, output_dir, base_url = "http://www.bmrb.wisc.edu/ftp/pub/bmrb/entry_lists/nmr-star3.1", verbose=T) {
        prefix <- "bmr"
        extension <- "str"
        if(!dir.exists(file.path(output_dir))) {dir.create(file.path(output_dir))}
        id_list <- gsub('([[:alpha:]]+)', '', id_list)
        cat("Downloading...\n")
        for (bmrb_id in id_list) {
                file_url = paste0(base_url, "/", prefix, bmrb_id, ".", extension)
                file_name = paste0(output_dir, "/", prefix, bmrb_id, ".", extension)
                if (file.exists(file_name)) {
                        cat(paste0("Skipping: ", prefix, bmrb_id, " already exists.\n"))
                        return()
                }
                if (verbose) {
                        cat(paste0("Processing: ", prefix, bmrb_id, "\n"))
                }
                tryCatch( {utils::download.file(file_url, file_name, quiet = T)},
                          error = function(e) {
                                  cat(paste(e, "\n"))
                          }
                          )

        }

}
