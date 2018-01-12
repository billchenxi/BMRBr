#' bmrb_download
#'
#' FUNCTION_DESCRIPTION
#'
#' @param base_url DESCRIPTION.
#'
#' @return RETURN_DESCRIPTION
#' @examples
#' # ADD_EXAMPLES_HERE
bmrb_download <- function(id_list, base_url = "http://www.bmrb.wisc.edu/ftp/pub/bmrb/entry_lists/nmr-star3.1/", output_dir = "NMR_STR3", verbose=T) {
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
                tryCatch( {download.file(file_url, file_name, quiet = T)},
                          error = function(e) {
                                  cat(paste(e, "\n"))
                          }
                          )

        }

}
