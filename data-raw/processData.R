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
names(p) <- c("crl", "3rd_week", "3rd_day", "10th_week", "10th_day", "50th_week", "50th_day", "90th_week", "90th_day", "97th_week", "97th_day")

## create tidy format table
gest_age_crl <- tidyr::pivot_longer(data = p, cols = "3rd_week":"97th_day", names_to = c("centile", "unit"), names_sep = "_", values_to = "age")

usethis::use_data(gest_age_crl, overwrite = TRUE, compress = "xz")



