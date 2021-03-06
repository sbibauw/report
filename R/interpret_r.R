#' Correlation Coefficient Interpretation
#'
#' @param r Value or vector of correlation coefficient.
#' @param rules Can be "cohen1988" (default), "evans1996" or custom set of rules.
#'
#'
#'
#' @examples
#' interpret_r(r = .015)
#' interpret_r(r = c(.5, -.02))
#' @seealso Page 88 of APA's 6th Edition.
#' @references
#' \itemize{
#'   \item Cohen, J. (1988). Statistical power analysis for the behavioural sciences.
#'   \item Evans, J. D. (1996). Straightforward statistics for the behavioral sciences. Thomson Brooks/Cole Publishing Co.
#' }
#' @export
interpret_r <- function(r, rules = "cohen1988") {
  if (is.rules(rules)) {
    return(interpret(abs(r), rules))
  } else {
    if (rules == "cohen1988") {
      text <- interpret(
        abs(r),
        rules(
          c(0.1, 0.3, 0.5),
          c("very small", "small", "moderate", "large")
        )
      )
    } else if (rules == "evans1996") {
      text <- interpret(
        abs(r),
        rules(
          c(0.2, 0.4, 0.6, 0.8),
          c("very weak", "weak", "moderate", "strong", "very strong")
        )
      )
    } else {
      stop("rules must be 'cohen1988', 'evans1996' or an object of type rules.")
    }
  }

  return(text)
}
