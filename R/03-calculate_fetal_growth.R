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
#'   diameter-for-gestational age centile.
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


################################################################################
#
#' Calculate abdominal circumference for gestational age centiles and z-scores
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param ac Abdominal circumference in millimetres
#'
#' @return A list of 2 elements containing 1) abdominal circumference-
#'   for-gestational age z-score; and, 2) abdominal circumference-
#'   for-gestational age centile.
#'
#' @examples
#' calculate_ac_gestage(gestage = "78+0", ac = 55)
#'
#' @export
#
################################################################################

calculate_ac_gestage <- function(gestage = NULL, ac = NULL) {
  ## Check gestage and ac is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(ac)) stop("Abdominal circumference measurement required to calculate z-score and centile. Try again.", call. = TRUE)
  ## Check if gestage is string or numeric
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## Calculate mean ac for ga
  medianAC <- -81.3243 + 11.6772 * ga - 0.000561865 * (ga ^ 3)
  sdAC <- -4.36302 + 0.121445 * (ga ^ 2) - 0.0130256 * (ga ^ 3) + 0.00282143 * (ga ^ 3) * log(ga)
  ## Calculate z-score
  zscore <- (ac - medianAC) / sdAC
  ## Calculate centiles
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  acga <- list(zscore, centile)
  ##
  return(acga)
}


################################################################################
#
#' Calculate femur length for gestational age centiles and z-scores
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param fl Femur length in millimetres
#'
#' @return A list of 2 elements containing 1) femur length-for-gestational age
#'   z-score; and, 2) femur length-for-gestational age centile.
#'
#' @examples
#' calculate_fl_gestage(gestage = "78+0", fl = 10)
#'
#' @export
#
################################################################################

calculate_fl_gestage <- function(gestage = NULL, fl = NULL) {
  ## Check gestage and fl is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(fl)) stop("Femur length measurement required to calculate z-score and centile. Try again.", call. = TRUE)
  ## Check if gestage is string or numeric
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## Calculate mean fl for ga
  medianFL <- -39.9616 + 4.32298 * ga - 0.0380156 * (ga ^ 2)
  sdFL <- exp(0.605843 - 42.0014 * (ga ^ -2) + 0.00000917972 * (ga ^ 3))
  ## Calculate z-score
  zscore <- (fl - medianFL) / sdFL
  ## Calculate centiles
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  flga <- list(zscore, centile)
  ##
  return(flga)
}


################################################################################
#
#' Calculate occipito-frontal diameter for gestational age centiles and z-scores
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param ofd Occipito-frontal diameter in millimetres
#'
#' @return A list of 2 elements containing 1) occipito-frontal
#'   diameter-for-gestational age z-score; and, 2) occipito-frontal
#'   diameter-for-gestational age centile.
#'
#' @examples
#' calculate_ofd_gestage(gestage = "78+0", ofd = 25)
#'
#' @export
#
################################################################################

calculate_ofd_gestage <- function(gestage = NULL, ofd = NULL) {
  ## Check gestage and ofd is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(ofd)) stop("Occipito-frontal diameter measurement required to calculate z-score and centile. Try again.", call. = TRUE)
  ## Check if gestage is string or numeric
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## Calculate mean ofd for ga
  medianOFD <- -12.4097 + 0.626342 * (ga ^ 2) - 0.148075 * (ga ^ 2) * log(ga)
  sdOFD <- exp(-0.880034 + 0.0631165 * (ga ^ 2) - 0.0317136 * (ga ^ 2) * log(ga) + 0.00408302 * (ga ^ 2) * log(ga) ^ 2)
  ## Calculate z-score
  zscore <- (ofd - medianOFD) / sdOFD
  ## Calculate centiles
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  ofdga <- list(zscore, centile)
  ##
  return(ofdga)
}


################################################################################
#
#' Calculate estimated fetal weight given abdominal circumference and head
#' circumference
#'
#' @param ac Abdominal circumference in centimetres. Use measurements made
#'   between 22+0 and 40+0 gestational weeks only.
#' @param hc Head circumference in centimetres. Use measurements made between
#'   22+0 and 40+0 gestational weeks only.
#'
#' @return Estimated fetal weight in grams.
#'
#' @examples
#' calculate_efw(ac = 55, hc = 90)
#'
#' @export
#
################################################################################

calculate_efw <- function(ac = NULL, hc = NULL) {
  ## Check that ac and hc are not NULL
  if(is.null(ac) & !is.null(hc)) stop("Abdominal circumference is required to calculate estimated fetal weight. Try again.", call. = TRUE)
  if(is.null(hc) & !is.null(ac)) stop("Head circumference is required to calculate estimated fetal weight. Try again.", call. = TRUE)
  if(is.null(ac) & is.null(hc)) stop("Abdominal circumference and head circumference are required to calculate estimated fetal weight. Try again.", call. = TRUE)
  ## Calculate efw
  efw <- exp(5.084820 - 54.06633 * (ac / 100) ^ 3 - 95.80076 * (ac / 100) ^ 3 * log(ac / 100) + 3.136370 * (hc / 100))
  ## Return efw
  return(efw)
}


################################################################################
#
#' Calculate estimated fetal weight for gestational age centiles and z-scores
#'
#' @param gestage Gestational age. Gestational age can be provided as a string
#'   with a format of weeks+days or as numeric of exact weeks in decimal format
#' @param ac Abdominal circumference in centimetres
#' @param hc Head circumference in centimetres
#'
#' @return A list of 6 elements containing 1) estimated fetal weight in grams
#'   based on abdominal circumference and head circumference; 2) skewness of
#'   gestational age; 3) mean gestational age; 4) coefficient of variation of
#'   gestational age; 5) estimated fetal weight-for-gestational age z-score;
#'   and, 6) estimated fetal weight-for-gestational age centile.
#'
#' @examples
#' calculate_efw_gestage(gestage = "30+0", ac = 26, hc = 29)
#'
#' @export
#
################################################################################

calculate_efw_gestage <- function(gestage = NULL, ac = NULL, hc = NULL) {
  ## Check gestage and ac and hc is not null
  if(is.null(gestage)) stop("Gestational age required to calculate z-score and centile. Try again.", call. = TRUE)
  if(is.null(ac)) stop("Abdominal circumference is required to calculate estimated fetal weight. Try again.", call. = TRUE)
  if(is.null(hc)) stop("Head circumference is required to calculate estimated fetal weight. Try again.", call. = TRUE)
  ## Check if gestage is string or numeric
  if(is.character(gestage)) {
    if(!stringr::str_detect(string = gestage, pattern = "[\\+]")) stop("Gestational age not in the right format (weeks+days as a string). Try again.", call. = TRUE)
    ## Convert gestage to weeks in decimals
    ga <- as.numeric(stringr::str_split(string = gestage, pattern = "[\\+]", simplify = TRUE))
    ga <- ga[1] + (ga[2] / 7)
  } else {
    ga <- gestage
  }
  ## Calculate efw
  efw <- calculate_efw(ac = ac, hc = hc)
  ## Calculate skewness
  skewGA <- -4.257629 - 2162.234 * (ga ^ -2) + 0.0002301829 * (ga ^ 3)
  ## Calculate mean
  meanGA <- 4.956737 + 0.0005019687 * (ga ^ 3) - 0.0001227065 * (ga ^ 3) * log(ga)
  ## Calculate coefficient of variation
  covGA <- (10 ^ -4) * (-6.997171 + 0.057559 * (ga ^ 3) - 0.01493946 * (ga ^ 3) * log(ga))
  ## Calculate z-score
  if(skewGA == 0) {
    zscore <- (covGA ^ -1) * log(log(efw) / meanGA)
  } else {
    zscore <- ((covGA * skewGA) ^ -1) * (((log(efw) / meanGA) ^ skewGA) - 1)
  }
  ## Calculate centile
  centile <- pnorm(q = zscore, mean = 0, sd = 1)
  ## Concatenate results
  efwga <- list(efw, skewGA, meanGA, covGA, zscore, centile)
  ## Rename list elements
  names(efwga) <- c("Estimated fetal weight (grams)",
                    "Skewness",
                    "Mean",
                    "Coefficient of variation",
                    "z-score",
                    "centile")
  ## Return efwga
  return(efwga)
}

