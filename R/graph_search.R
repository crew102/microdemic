#' Graph search API
#'
#' @export
#' @param query (character) query terms
#' @param mode (character) json (default) or lambda
#' @param key (character) microsoft academic API key, see the `Authentication` 
#' section in [microdemic-package]
#' @param ... curl options passed on to [crul::HttpClient]
#' @note THIS FUNCTION CURRENTLY DOES NOT WORK AS OF 2018-10-22 - 
#' IT'S NOT CLEAR HOW TO QUERY AGAINST THIS API ROUTE 
#' (`academic/v1.0/graph/search`)
#' @references
#' graph search method: <https://docs.microsoft.com/en-us/azure/cognitive-services/academic-knowledge/graphsearchmethod>
#' json search: <https://docs.microsoft.com/en-us/azure/cognitive-services/academic-knowledge/jsonsearchsyntax>
#' lambda search: <https://docs.microsoft.com/en-us/azure/cognitive-services/academic-knowledge/lambdasearchsyntax>
#' @examples \dontrun{
#' # x <- '{
#' # "path": "/paper/AuthorIDs/author",
#' #  "paper": {
#' #    "type": "Paper",
#' #    "NormalizedTitle": "graph engine",
#' #    "select": [ "OriginalTitle" ]
#' #  },
#' #  "author": {
#' #    "return": { "type": "Author", "Name": "bin shao" }
#' #  }
#' # }'
#' # 
#' # res <- ma_graph_search(query = x)
#' # res$Results
#' # do.call(rbind, res$Results)
#' }
ma_graph_search <- function(query, mode = "json", key = NULL, ...) {
  assert(mode, "character")
  assert(query, c("character", "json"))

  args <- comp(list(mode = mode))
  ma_HTTP("academic/v1.0/graph/search", args, key, "POST",
          query, encode = "json", ctype = "application/json", ...)
}
