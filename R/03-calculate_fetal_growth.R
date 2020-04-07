################################################################################
#
#' Calculate head circumference for gestational age centiles and z-scores
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param hc Head circumference in millimetres
#'
#' @return A list of 2 elements containing 1) head circumference-for-gestational
#'   age z-score; and, 2) head circumference-for-gestational age centile.
#'
#' @examples
#' calculate_hc_gestage(gestage = "78+0", hc = 90)
#'
#' @export
#
################################################################################

calculate_hc_gestage <- function(gestage = NULL, hc = NULL) {
  ## Check gestage and hc is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(hc)) stop("Head circumference measurement required to calculate z-score and centile. Try again.", call. = TRUE)
  ## Check if gestage is string or numeric
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## Calculate mean hc for ga
  medianHC <- -28.2849 + 1.69267 * (ga ^ 2) - 0.397485 * (ga ^ 2) * log(ga)
  sdHC <- 1.98735 + 0.0136772 * (ga ^ 3) - 0.00726264 * (ga ^ 3) * log(ga) + 0.000976253 * (ga ^ 3) * log(ga) ^ 2
  ## Calculate z-score
  zscore <- (hc - medianHC) / sdHC
  ## Calculate centiles
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  hcga <- list(zscore, centile)
  ##
  return(hcga)
}


################################################################################
#
#' Calculate bi-parietal diameter for gestational age centiles and z-scores
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param bpd Bi-parietal diameter in millimetres
#'
#' @return A list of 2 elements containing 1) bi-parietal
#'   diameter-for-gestational age z-score; and, 2) bi-parietal
#'   diamater-for-gestational age centile.
#'
#' @examples
#' calculate_bpd_gestage(gestage = "78+0", bpd = 20)
#'
#' @export
#
################################################################################

calculate_bpd_gestage <- function(gestage = NULL, bpd = NULL) {
  ## Check gestage and bpd is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(bpd)) stop("Bi-parietal diameter measurement required to calculate z-score and centile. Try again.", call. = TRUE)
  ## Check if gestage is string or numeric
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## Calculate mean bpd for ga
  medianBPD <- 5.60878 + 0.158369 * (ga ^ 2) - 0.00256379 * (ga ^ 3)
  sdBPD <- exp(0.101242 + 0.00150557 * (ga ^ 3) - 0.000771535 * (ga ^ 3) * log(ga) + 0.0000999638 * (ga ^ 3) * log(ga) ^ 2)
  ## Calculate z-score
  zscore <- (bpd - medianBPD) / sdBPD
  ## Calculate centiles
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  bpdga <- list(zscore, centile)
  ##
  return(bpdga)
}
