################################################################################
#
#' Calculate gestational weight gain-for-gestational age z-score and centile
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param baseline Baseline weight in kilograms (up to 2 decimal places) in the
#'   first trimester of pregnancy (less than 14 weeks gestational age)
#' @param current Weight at current visit in kilograms (up to 2 decimal places)
#'
#' @return A list of 3 elements containing 1) gestational weight gain in
#'   kilograms; 2) gestational weight gain-for-gestational age z-score; and,
#'   3) gestational weight gain-for-gestational age centile.
#'
#' @examples
#' calculate_gwg_gestage(gestage = "32+0", baseline = 60, current = 69.52)
#'
#' @export
#'
#
################################################################################

calculate_gwg_gestage <- function(gestage = NULL,
                                  baseline = NULL,
                                  current = NULL) {
  ## Check gestage and baseline and current is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(baseline)) stop("Gestational weight at first trimester (less than 14 weeks) required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(current)) stop("Gestational weight at current visit required to calculate z-score and centile. Try again.", call. = TRUE)
  ## Check if gestage is string or numeric
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## calculate gestational weight gain
  gwg <- current - baseline
  ## Calculate median/mean gestational weight gain
  medianGWG <- exp(1.382972 - 56.14743 * (ga ^ -2) + 0.2787683 * (ga ^ 0.5))
  ## Calculate sd gestational weight gain
  sdGWG <- exp(0.2501993731 + 142.4297879 * (ga ^ -2) - 61.45345 * (ga ^ -2) * log(ga))
  ##
  ## Calculate z-score
  zscore <- (gwg - medianGWG) / sdGWG
  ## Calculate centiles
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  gwgga <- list(gwg, zscore, centile)
  ##
  return(gwgga)
}
