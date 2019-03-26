
#' Print Fancy Text
#'
#' This function prints the string provided to it and formats it to be bold with
#' a green check mark
#'
#' @param x A length one character vector
#'
#' @return x, invisibly
#' @export
#'
#' @examples
#' print_fancy("test")
print_fancy <- function(x){

  if (!typeof(x) == "character"){
    stop(paste("x must be of type character, not", typeof(x)), call. = FALSE)
  }

  if (!length(x) == 1L){
    stop(paste("x must be of length 1, not", length(x)), call. = FALSE)
  }

  msg <- crayon::bold(x)

  tick <- crayon::green(clisymbols::symbol$tick)

  cat(msg, tick)

  invisible(x)

}
