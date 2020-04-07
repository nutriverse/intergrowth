## Libraries

library(pdftools)
library(stringr)

options(stringsAsFactors = FALSE)

######################## Pregnancy Dating ######################################

pdfLink <- "https://intergrowth21.tghn.org/site_media/media/medialibrary/2017/04/GROW_Early_Preg_charts_CRL_dating_ct_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")

## First page
temp1 <- temp[[1]][9:41]
p1 <- NULL

for(i in 1:length(temp1)) {
  x <- stringr::str_split(string = temp1[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p1 <- data.frame(rbind(p1, x))
}

## Second page
temp2 <- temp[[2]][9:41]
p2 <- NULL

for(i in 1:length(temp2)) {
  x <- stringr::str_split(string = temp2[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p2 <- data.frame(rbind(p2, x))
}

## Third page
temp3 <- temp[[3]][9:23]
p3 <- NULL

for(i in 1:length(temp3)) {
  x <- stringr::str_split(string = temp3[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p3 <- data.frame(rbind(p3, x))
}

## Concatenate tables
p <- data.frame(rbind(p1, p2, p3))
row.names(p) <- 1:nrow(p)
names(p) <- c("crl", "3rd_week", "3rd_day", "10th_week", "10th_day", "50th_week",
              "50th_day", "90th_week", "90th_day", "97th_week", "97th_day")

## create tidy format table
gestage_crl <- tidyr::pivot_longer(data = p, cols = "3rd_week":"97th_day",
                                    names_to = c("centile", "unit"),
                                    names_sep = "_", values_to = "age")

usethis::use_data(gestage_crl, overwrite = TRUE, compress = "xz")

##################### Fetal size in early pregnancy (centiles) #################

pdfLink <- "https://intergrowth21.tghn.org/site_media/media/medialibrary/2017/04/GROW_Early_Preg_charts_SIZE_ct_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")

## First page
temp1 <- temp[[1]][9:41]
p1 <- NULL

for(i in 1:length(temp1)) {
  x <- stringr::str_split(string = temp1[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p1 <- data.frame(rbind(p1, x))
}

## Second page
temp2 <- temp[[2]][9:23]
p2 <- NULL

for(i in 1:length(temp2)) {
  x <- stringr::str_split(string = temp2[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p2 <- data.frame(rbind(p2, x))
}

## Concatenate tables
p <- data.frame(rbind(p1, p2))
row.names(p) <- 1:nrow(p)
names(p) <- c("week", "day", "3rd", "5th", "10th", "50th",
              "90th", "95th", "97th")

## create tidy format table
crl_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                           names_to = "centile",
                                           values_to = "crl")

usethis::use_data(crl_gestage_centile, overwrite = TRUE, compress = "xz")

##################### Fetal size in early pregnancy (z-score) ##################

pdfLink <- "https://media.tghn.org/medialibrary/2017/04/GROW_Early_Preg_charts_SIZE_zs_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")

## First page
temp1 <- temp[[1]][9:41]
p1 <- NULL

for(i in 1:length(temp1)) {
  x <- stringr::str_split(string = temp1[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p1 <- data.frame(rbind(p1, x))
}

## Second page
temp2 <- temp[[2]][9:23]
p2 <- NULL

for(i in 1:length(temp2)) {
  x <- stringr::str_split(string = temp2[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p2 <- data.frame(rbind(p2, x))
}

## Concatenate tables
p <- data.frame(rbind(p1, p2))
row.names(p) <- 1:nrow(p)
names(p) <- c("week", "day", "-3SD", "-2SD", "-1SD", "0",
              "1SD", "2SD", "3SD")

## create tidy format table
crl_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                      names_to = "sd",
                                      values_to = "crl")

usethis::use_data(crl_gestage_sd, overwrite = TRUE, compress = "xz")

##################### Symphysis-Fundal Height (centiles) #######################

pdfLink <- "https://media.tghn.org/medialibrary/2019/08/GROW_SFH_ext_ct_Table_-_New.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]
p <- NULL
for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "3rd", "5th", "10th", "50th", "90th", "95th", "97th")

## create tidy format table
sfh_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                           names_to = "centile",
                                           values_to = "sfh")

usethis::use_data(sfh_gestage_centile, overwrite = TRUE, compress = "xz")

##################### Fetal size in early pregnancy (z-score) ##################

pdfLink <- "https://media.tghn.org/medialibrary/2019/08/GROW_SFH_zs_Table_-_New.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][10:36]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD")

## create tidy format table
sfh_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                      names_to = "sd",
                                      values_to = "sfh")

usethis::use_data(sfh_gestage_sd, overwrite = TRUE, compress = "xz")

########### Fetal head circumference for gestational age (centile) #############

pdfLink <- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-ct_hc_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "3rd", "5th", "10th", "50th", "90th", "95th", "97th")

## create tidy format table
hc_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                          names_to = "centile",
                                          values_to = "hc")

usethis::use_data(hc_gestage_centile, overwrite = TRUE, compress = "xz")

########### Fetal head circumference for gestational age (z-score) #############

pdfLink<- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-zs_hc_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD")

## create tidy format table
hc_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                     names_to = "sd",
                                     values_to = "hc")

usethis::use_data(hc_gestage_sd, overwrite = TRUE, compress = "xz")

########### Fetal bi-parietal diameter for gestational age (centile) ###########

pdfLink <- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-ct_bpd_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "3rd", "5th", "10th", "50th", "90th", "95th", "97th")

## create tidy format table
bpd_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                           names_to = "centile",
                                           values_to = "bpd")

usethis::use_data(bpd_gestage_centile, overwrite = TRUE, compress = "xz")

########### Fetal bi-parietal diameter for gestational age (z-score) ###########

pdfLink<- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-zs_bpd_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD")

## create tidy format table
bpd_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                      names_to = "sd",
                                      values_to = "bpd")

usethis::use_data(bpd_gestage_sd, overwrite = TRUE, compress = "xz")

######### Fetal abdominal circumference for gestational age (centile) ##########

pdfLink <- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-ct_ac_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "3rd", "5th", "10th", "50th", "90th", "95th", "97th")

## create tidy format table
ac_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                          names_to = "centile",
                                          values_to = "ac")

usethis::use_data(ac_gestage_centile, overwrite = TRUE, compress = "xz")

######### Fetal abdominal circumference for gestational age (z-score) ##########

pdfLink<- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-zs_ac_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD")

## create tidy format table
ac_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                     names_to = "sd",
                                     values_to = "ac")

usethis::use_data(ac_gestage_sd, overwrite = TRUE, compress = "xz")

################# Femur length for gestational age (centile) ###################

pdfLink <- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-ct_fl_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "3rd", "5th", "10th", "50th", "90th", "95th", "97th")

## create tidy format table
fl_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                          names_to = "centile",
                                          values_to = "fl")

usethis::use_data(fl_gestage_centile, overwrite = TRUE, compress = "xz")

################# Femur length for gestational age (z-score) ###################

pdfLink<- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-zs_fl_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD")

## create tidy format table
fl_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                     names_to = "sd",
                                     values_to = "fl")

usethis::use_data(fl_gestage_sd, overwrite = TRUE, compress = "xz")

########## Occipito-frontal diameter for gestational age (centile) #############

pdfLink <- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-ct_ofd_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "3rd", "5th", "10th", "50th", "90th", "95th", "97th")

## create tidy format table
ofd_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                           names_to = "centile",
                                           values_to = "ofd")

usethis::use_data(ofd_gestage_centile, overwrite = TRUE, compress = "xz")

########## Occipito-frontal diameter for gestational age (z-score) #############

pdfLink<- "https://media.tghn.org/medialibrary/2017/03/GROW_Fetal-zs_ofd_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:35]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD")

## create tidy format table
ofd_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                      names_to = "sd",
                                      values_to = "ofd")

usethis::use_data(ofd_gestage_sd, overwrite = TRUE, compress = "xz")

########## Estimated fetal weight for gestational age (centile) ################

pdfLink <- "https://media.tghn.org/medialibrary/2017/12/GROW_EFW_ct_Table_values.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][8:26]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "3rd", "5th", "10th", "50th", "90th", "95th", "97th")

## create tidy format table
efw_gestage_centile <- tidyr::pivot_longer(data = p, cols = "3rd":"97th",
                                           names_to = "centile",
                                           values_to = "efw")

usethis::use_data(efw_gestage_centile, overwrite = TRUE, compress = "xz")

########## Estimated fetal weight for gestational age (z-score) ################

pdfLink<- "https://media.tghn.org/medialibrary/2017/03/GROW_EFW_zs_Table.pdf"

temp <- pdftools::pdf_text(pdf = pdfLink)
temp <- stringr::str_split(string = temp, pattern = "\n")
temp <- temp[[1]][9:27]

p <- NULL

for(i in 1:length(temp)) {
  x <- stringr::str_split(string = temp[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p <- data.frame(rbind(p, x))
}

names(p) <- c("gestage", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD")

## create tidy format table
efw_gestage_sd <- tidyr::pivot_longer(data = p, cols = "-3SD":"3SD",
                                      names_to = "sd",
                                      values_to = "efw")

usethis::use_data(efw_gestage_sd, overwrite = TRUE, compress = "xz")
