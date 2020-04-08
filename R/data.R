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


################################################################################
#
#' International fetal growth standards: table of centiles of head circumference
#' based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{hc}}{Head circumference in millimetres}
#' }
#'
#' @examples
#' hc_gestage_centile
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"hc_gestage_centile"


################################################################################
#
#' International fetal growth standards: table of z-scores of head circumference
#' based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{gestage}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{hc}}{Head circumference in millimetres}
#' }
#'
#' @examples
#' hc_gestage_sd
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"hc_gestage_sd"


################################################################################
#
#' International fetal growth standards: table of centiles of bi-parietal
#' diameter based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{bpd}}{Bi-parietal diameter in millimetres}
#' }
#'
#' @examples
#' bpd_gestage_centile
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"bpd_gestage_centile"


################################################################################
#
#' International fetal growth standards: table of z-scores of bi-parietal
#' diameter based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{gestage}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{bpd}}{Bi-parietal diameter in millimetres}
#' }
#'
#' @examples
#' bpd_gestage_sd
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"bpd_gestage_sd"


################################################################################
#
#' International fetal growth standards: table of centiles of abdominal
#' circumference based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{ac}}{Abdominal circumference in millimetres}
#' }
#'
#' @examples
#' ac_gestage_centile
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"ac_gestage_centile"


################################################################################
#
#' International fetal growth standards: table of z-scores of abdominal
#' circumference based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{gestage}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{ac}}{Abdominal circumference in millimetres}
#' }
#'
#' @examples
#' ac_gestage_sd
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"ac_gestage_sd"


################################################################################
#
#' International fetal growth standards: table of centiles of femur length
#' based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{fl}}{Femur length in millimetres}
#' }
#'
#' @examples
#' fl_gestage_centile
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"fl_gestage_centile"


################################################################################
#
#' International fetal growth standards: table of z-scores of femur length
#' based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{gestage}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{fl}}{Femur length in millimetres}
#' }
#'
#' @examples
#' fl_gestage_sd
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"fl_gestage_sd"


################################################################################
#
#' International fetal growth standards: table of centiles of occipito-frontal
#' diameter based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{ofd}}{Occipito-frontal diameter in millimetres}
#' }
#'
#' @examples
#' ofd_gestage_centile
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"ofd_gestage_centile"


################################################################################
#
#' International fetal growth standards: table of z-scores of occipito-frontal
#' diameter based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{gestage}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{ofd}}{Occipito-frontal diameter in millimetres}
#' }
#'
#' @examples
#' ofd_gestage_sd
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"ofd_gestage_sd"


################################################################################
#
#' International fetal growth standards: table of centiles of estimated fetal
#' weight based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{efw}}{Estimated fetal weight in grams}
#' }
#'
#' @examples
#' efw_gestage_centile
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"efw_gestage_centile"


################################################################################
#
#' International fetal growth standards: table of z-scores of estimated fetal
#' weight based on gestation age in exact weeks
#'
#' @format A tibble with 189 rows and 3 columns:
#' \describe{
#'   \item{\code{gestage}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{efw}}{Estimated fetal weight in grams}
#' }
#'
#' @examples
#' efw_gestage_sd
#'
#' @source Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L,
#'   Lambert A et al. International standards for fetal growth based on serial
#'   ultrasound measurements: the Fetal Growth Longitudinal Study of the
#'   INTERGROWTH-21st Project. Lancet 2014, 384(9946):869-79.
#'
#
################################################################################
"efw_gestage_sd"


################################################################################
#
#' International gestational weight gain standards: table of centiles of
#' gestational weight gain for women with normal body mass index based on
#' gestational age in exact weeks
#'
#' @format A tibble with 182 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{centile}}{Centiles (3rd, 5th, 10th, 50th, 90th, 95th, 97th)}
#'   \item{\code{gestwt}}{Gestational weight gain in kilograms}
#' }
#'
#' @examples
#' gestwt_gestage_centile
#'
#' @source Cheikh Ismail L, Bishop DC, Pang R, Ohuma EO, Kac G, Abrams B et al.
#'   Gestational weight gain standards based on women enrolled in the Fetal
#'   Growth Longitudinal Study of the INTERGROWTH-21st Project: a prospective
#'   longitudinal cohort study. BMJ 2016, 352(i):555.
#'
#
################################################################################
"gestwt_gestage_centile"


################################################################################
#
#' International gestational weight gain standards: table of z-scores of
#' gestational weight gain for women with normal body mass index based on
#' gestational age in exact weeks
#'
#' @format A tibble with 182 rows and 3 columns:
#' \describe{
#'   \item{\code{week}}{Gestational age in exact weeks}
#'   \item{\code{sd}}{z-scores (-3SD, -2SD, -1SD, 0, 1SD, 2SD, 3SD)}
#'   \item{\code{gestwt}}{Gestational weight gain in kilograms}
#' }
#'
#' @examples
#' gestwt_gestage_sd
#'
#' @source Cheikh Ismail L, Bishop DC, Pang R, Ohuma EO, Kac G, Abrams B et al.
#'   Gestational weight gain standards based on women enrolled in the Fetal
#'   Growth Longitudinal Study of the INTERGROWTH-21st Project: a prospective
#'   longitudinal cohort study. BMJ 2016, 352(i):555.
#'
#
################################################################################
"gestwt_gestage_sd"
