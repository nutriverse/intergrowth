################################################################################
#
#' Calculate gestational age given crown-rump length (mm) based on ultrasound
#'
#' @param date Date when measurement/s was/were taken. Date should be provided
#'   in <YYYY-DD-MM> format. Defaults to current date.
#' @param crl Crown-rump length measurement in millimetres.
#'
#' @return A list of 3 elements containing 1) gestional age in weeks (numeric);
#'   2) gestational age in weeks and days (character); and, 3) expected date
#'   of delivery (date).
#'
#' @examples
#'
#' calculate_gestage(date = "2016-23-12", crl = 17)
#'
#' @export
#'
#
################################################################################

calculate_gestage_crl <- function(date = Sys.Date(),
                                  crl = NULL) {
  ## Error message for crl = NULL
  if(is.null(crl))
    stop("Crown-rump length required for estimating gestational age. Please try again.", call. = TRUE)
  ## Error message for crl < 15
  if(crl < 15)
    stop("Gestational age estimation using crown-rump length requires a crown-rump length of at least 15 mm and up to 100 mm.", call. = TRUE)
  ## Error message for crl > 100
  if(crl > 100)
    stop("Gestational age estimation using crown-rump length requires a crown-rump length of at least 15 mm and up to 100 mm. Try calculating based on head circumference or femur length instead.", call. = TRUE)
  ## Show message of calculation being performed
  message(paste("Estimating gestational age using crown-rump length of ", crl, " mm.", sep = ""))
  ## Calculate number of weeks age
  inWeeks <- (40.9041 + (3.21585 * crl ^ 0.5) + (0.348956 * crl)) / 7
  ## Calculate number of weeks and days
  inWeeksDays <- paste(as.integer(inWeeks), " weeks and ",
                       as.integer((inWeeks - as.integer(inWeeks)) * 7), " days",
                       sep = "")
  ## Calculate estimated date of delivery
  edd <- lubridate::ydm(date) +
    (lubridate::days(280) -
       (lubridate::weeks(as.integer(inWeeks)) +
          lubridate::days(as.integer((inWeeks - as.integer(inWeeks)) * 7))))
  ## Concatenate results
  gestage <- list(inWeeks, inWeeksDays, edd)
  ## Return results
  return(gestage)
}


################################################################################
#
#' Calculate gestational age given head circumference (mm) and/or femur
#' length (mm) based on ultrasound
#'
#' @param date Date when measurement/s was/were taken. Date should be provided
#'   in <YYYY-DD-MM> format. Defaults to current date.
#' @param hc Head circumference measurement in millimetres.
#' @param fl Femur length measurement in millimetres.
#'
#' @return A list of 3 elements containing 1) gestional age in weeks (numeric);
#'   2) gestational age in weeks and days (character); and, 3) expected date
#'   of delivery (date).
#'
#' @examples
#'
#' calculate_gestage_hcfl(date = "2016-23-12", hc = 130, fl = 20)
#'
#' @export
#'
#
################################################################################

calculate_gestage_hcfl <- function(date = Sys.Date(),
                                   hc = NULL,
                                   fl = NULL) {
  if(is.null(hc)) stop("Gestational age estimation requires at least a head circumference. Please try again.", call. = TRUE)
  if(!is.null(hc) & !is.null(fl)) {
    message(paste("Estimating gestational age using head circumference of ", hc, " mm and femur length of ", fl, " mm.", sep = ""))
    inWeeks <- (exp(0.03242 * log(hc) ^ 2 + (0.001644 * fl * log(hc) + 3.813))) / 7
    inWeeksDays <- paste(as.integer(inWeeks), " weeks and ",
                             as.integer((inWeeks - as.integer(inWeeks)) * 7), " days",
                             sep = "")
        edd <- lubridate::ydm(date) +
          (lubridate::days(280) -
             (lubridate::weeks(as.integer(inWeeks)) +
                lubridate::days(as.integer((inWeeks - as.integer(inWeeks)) * 7))))
        gestage <- list(inWeeks, inWeeksDays, edd)
  }
  ##
  if(!is.null(hc) & is.null(fl)) {
    message(paste("Estimating gestational age using head circumference of ", hc, " mm.", sep = ""))
    inWeeks <- (exp(0.0597 * log(hc) ^ 2 + (0.000000006409 * hc ^ 3 + 3.3258))) / 7
    inWeeksDays <- paste(as.integer(inWeeks), " weeks and ",
                         as.integer((inWeeks - as.integer(inWeeks)) * 7), " days",
                         sep = "")
    edd <- lubridate::ydm(date) +
      (lubridate::days(280) -
         (lubridate::weeks(as.integer(inWeeks)) +
            lubridate::days(as.integer((inWeeks - as.integer(inWeeks)) * 7))))
    gestage <- list(inWeeks, inWeeksDays, edd)
  }
  ##
  return(gestage)
}



################################################################################
#
#' Calculate gestational age given crown-rump length and/or head circumference
#' and femur length based on ultrasound
#'
#' @param date Date when measurement/s was/were taken. Defaults to current
#'   date.
#' @param crl Crown-rump length measurement in millimetres
#' @param hc Head circumference measurement in millimetres
#' @param fl Femuer length measurement in millimetres
#'
#' @return A list of 3 elements containing 1) gestional age in weeks (numeric);
#'   2) gestational age in weeks and days (character); and, 3) expected date
#'   of delivery (date).
#'
#' @examples
#'
#' calculate_gestage(date = "2016-23-12", crl = 17)
#'
#' @export
#'
#
################################################################################

calculate_gestage <- function(date = Sys.Date(),
                              crl = NULL,
                              hc = NULL,
                              fl = NULL) {
  ##
  if(!is.null(crl) & crl >= 15 & crl <= 100) {
    gestage <- calculate_gestage_crl(date = date, crl = crl)
    ##
    if(crl > 100) {
      gestage <- calculate_gestage_hcfl(date = date, hc = hc, fl = fl)
    }
  }
  ##
  if(!is.null(hc)) {
    if(is.null(crl)) {
      gestage <- calculate_gestage_hcfl(date = date, hc = hc, fl = fl)
    }
    ##
    if(!is.null(crl)) {
      if(crl > 100) {
        gestage <- calculate_gestage_hcfl(date = date, hc = hc, fl = fl)
      }
    }
  }
  ##
  return(gestage)
}


