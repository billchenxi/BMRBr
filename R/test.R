#'
#' FUNCTION_DESCRIPTION
#'
#' @param base_url DESCRIPTION.
#'
#' @return RETURN_DESCRIPTION
#' @examples
#' # ADD_EXAMPLES_HERE
#'
'usage: my_prog.R [-a -r -m <msg>]

options:
-a        Add
-r        Remote
-m <msg>  Message' -> doc

# load the docopt library
library(docopt)
# retrieve the command-line arguments
opts <- docopt(doc)
# what are the options? Note that stripped versions of the parameters are added to the returned list
#str(opts)

print(opts$m)
