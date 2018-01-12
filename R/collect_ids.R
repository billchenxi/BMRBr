
#' collect_ids
#'
#' FUNCTION_DESCRIPTION
#'
#' @param base_url (optional) The BMRB entry list page for nmr-star3.1, http://www.bmrb.wisc.edu/ftp/pub/bmrb/entry_lists/nmr-star3.1/.
#' @param output whether to output as a list of ids.
#'
#' @return RETURN_DESCRIPTION
#' @examples
#' # ADD_EXAMPLES_HERE
collect_ids <- function(base_url="http://www.bmrb.wisc.edu/ftp/pub/bmrb/entry_lists/nmr-star3.1/", output = F) {
        cat("Fetching data ...\n")
        webpage<- xml2::read_html(base_url)
        table <-rvest::html_nodes(webpage, "table")
        table <- rvest::html_table(table, fill = TRUE)[[1]]
        BMRB_files <- table[-c(1,2), -c(1,5)]
        if (output) {
                return(BMRB_files["Name"])
        }else{
                return(BMRB_files)
        }

}
