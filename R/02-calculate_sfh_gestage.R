################################################################################
#
#' Calculate symphysis-fundal height-for-gestational age z-score and centile
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param sfh Symphysis-fundal height measurement in centimetres up to 1
#'   decimal place
#'
#' @return A list of 2 elements containing 1) symphysis-fundal
#'   height-for-gestational age z-score; and, 2) symphysis-fundal
#'   height-for-gestational age centile.
#'
#' @examples
#' calculate_sfh_gestage(gestage = "40+1", sfh = 40)
#'
#' @export
#'
#
################################################################################

calculate_sfh_gestage <- function(gestage = NULL, sfh = NULL) {
  ## Check that gestage and sfh is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(sfh)) stop("Symphysis-fundal height measurement required to calculate z-score and centile. Try again.", call. = TRUE)
  ## Check if gestage is string
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## Calculate mean sfh for ga
  medianSFH <- 5.133374 + 0.1058353119 * (ga ^ 2) - 0.0231295 * (ga ^ 2) * log(ga)
  sdSFH <- 0.99226687 + 0.0258087 * ga
  ## Calculate z-score
  zscore <- (sfh - medianSFH) / sdSFH
  ## Calculate centiles
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  sfhga <- list(zscore, centile)
  ##
  return(sfhga)
}
