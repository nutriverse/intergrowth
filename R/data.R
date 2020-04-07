################################################################################
#
#' International dating standards in early pregnancy: table of centiles of
#' gestational age in weeks and days based on crown-rump length in millimetres
#'
#' @format A tibble with 810 rows and 4 columns:
#' \describe{
#'   \item{\code{crl}}{Crown-rump length in millimetres}
#'   \item{\code{centile}}{Centile (3rd, 10th, 50th, 90th, 97th)}
#'   \item{\code{unit}}{Time unit for age value (week or day)}
#'   \item{\code{age}}{Age value}
#' }
#'
#' @examples
#' gestage_crl
#'
#' @source Napolitano R, Dhami J, Ohuma EO, Ioannou C, Conde-Agudelo A,
#'     Kennedy SH et al. Pregnancy dating by fetal crown-rump length: a
#'     systematic review of charts. BJOG 2014, 121(5):556-5.
#'
#
################################################################################
"gestage_crl"


################################################################################
#
#' International fetal size standards in early pregnancy: table of centiles of
#' crown-rump length based on gestation age in weeks and days
#'
#' @format A tibble with 336 rows and 4 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age - weeks}
#'   \item{\code{day}}{Gestation age - days}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{crl}}{Crown-rump length in millimetres}
#' }
#'
#' @examples
#' crl_gestage_centile
#'
#' @source Napolitano R, Dhami J, Ohuma EO, Ioannou C, Conde-Agudelo A,
#'     Kennedy SH et al. Pregnancy dating by fetal crown-rump length: a
#'     systematic review of charts. BJOG 2014, 121(5):556-5.
#'
#
################################################################################
"crl_gestage_centile"


################################################################################
#
#' International fetal size standards in early pregnancy: table of z-scores of
#' crown-rump length based on gestation age in weeks and days
#'
#' @format A tibble with 336 rows and 4 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age - weeks}
#'   \item{\code{day}}{Gestation age - days}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{crl}}{Crown-rump length in millimetres}
#' }
#'
#' @examples
#' crl_gestage_sd
#'
#' @source Napolitano R, Dhami J, Ohuma EO, Ioannou C, Conde-Agudelo A,
#'     Kennedy SH et al. Pregnancy dating by fetal crown-rump length: a
#'     systematic review of charts. BJOG 2014, 121(5):556-5.
#'
#
################################################################################
"crl_gestage_sd"


################################################################################
#
#' International symphysis-fundal height standards: table of centiles of
#' symphysis-fundal height based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{sfh}}{Symphysis-fundal height in centimetres}
#' }
#'
#' @examples
#' sfh_gestage_centile
#'
#' @source Papageorghiou AT, Ohuma EO, Gravett MG, Lamber A, Noble JA,
#'   Pang R et al. International standards for symphysis-fundal height based
#'   on serial measurements from the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project: prospective cohort study in eight countries.
#'   BMJ 2016, 355:i5662.
#'
#
################################################################################
"sfh_gestage_centile"


################################################################################
#
#' International symphysis-fundal height standards: table of z-scores of
#' symphysis-fundal height based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{gestage}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{sfh}}{Symphysis-fundal height in centimetres}
#' }
#'
#' @examples
#' sfh_gestage_sd
#'
#' @source Papageorghiou AT, Ohuma EO, Gravett MG, Lamber A, Noble JA,
#'   Pang R et al. International standards for symphysis-fundal height based
#'   on serial measurements from the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project: prospective cohort study in eight countries.
#'   BMJ 2016, 355:i5662.
#'
#
################################################################################
"sfh_gestage_sd"
