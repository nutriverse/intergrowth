## Libraries

library(pdftools)
library(stringr)

options(stringsAsFactors = FALSE)

################# Birthweight for gestational age (centile) ####################

pdfLinkBoys<- "https://media.tghn.org/medialibrary/2017/03/GROW_Newborn-ct-boys_bw_Table.pdf"

tempBoys <- pdftools::pdf_text(pdf = pdfLinkBoys)
tempBoys <- stringr::str_split(string = tempBoys, pattern = "\n")

## Page 1
temp1 <- tempBoys[[1]][8:42]

p1 <- NULL

for(i in 1:length(temp1)) {
  x <- stringr::str_split(string = temp1[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p1 <- data.frame(rbind(p1, x))
}

## Page 2
temp2 <- tempBoys[[2]][8:42]

p2 <- NULL

for(i in 1:length(temp2)) {
  x <- stringr::str_split(string = temp2[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p2 <- data.frame(rbind(p2, x))
}

## Concatenate
p <- data.frame(rbind(p1, p2))
p <- data.frame(p, sex = 1)
names(p) <- c("week", "day", "3rd", "5th", "10th", "50th", "90th", "95th", "97th", "sex")

pBoys <- p

##
pdfLinkGirls<- "https://media.tghn.org/medialibrary/2017/03/GROW_Newborn-ct-girls_bw_Table.pdf"

tempGirls <- pdftools::pdf_text(pdf = pdfLinkGirls)
tempGirls <- stringr::str_split(string = tempGirls, pattern = "\n")

## Page 1
temp1 <- tempGirls[[1]][8:42]

p1 <- NULL

for(i in 1:length(temp1)) {
  x <- stringr::str_split(string = temp1[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p1 <- data.frame(rbind(p1, x))
}

## Page 2
temp2 <- tempGirls[[2]][8:42]

p2 <- NULL

for(i in 1:length(temp2)) {
  x <- stringr::str_split(string = temp2[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p2 <- data.frame(rbind(p2, x))
}

## Concatenate
p <- data.frame(rbind(p1, p2))
p <- data.frame(p, sex = 2)
names(p) <- c("week", "day", "3rd", "5th", "10th", "50th", "90th", "95th", "97th", "sex")

pGirls <- p

## Concatenate boys and girls data.frame
p <- data.frame(rbind(pBoys, pGirls))

names(p) <- c("week", "day", "3rd", "5th", "10th", "50th", "90th", "95th", "97th", "sex")
row.names(p) <- 1:nrow(p)

## create tidy format table
bw_gestage_term_centile <- tidyr::pivot_longer(data = p,
                                               cols = "3rd":"97th",
                                               names_to = "centile",
                                               values_to = "bw")

usethis::use_data(bw_gestage_term_centile, overwrite = TRUE, compress = "xz")

################# Birthweight for gestational age (z-score) ####################

pdfLinkBoys<- "https://media.tghn.org/medialibrary/2017/03/GROW_Newborn-zs-boys_bw_Table.pdf"

tempBoys <- pdftools::pdf_text(pdf = pdfLinkBoys)
tempBoys <- stringr::str_split(string = tempBoys, pattern = "\n")

## Page 1
temp1 <- tempBoys[[1]][9:41]

p1 <- NULL

for(i in 1:length(temp1)) {
  x <- stringr::str_split(string = temp1[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p1 <- data.frame(rbind(p1, x))
}

## Page 2
temp2 <- tempBoys[[2]][9:38]

p2 <- NULL

for(i in 1:length(temp2)) {
  x <- stringr::str_split(string = temp2[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p2 <- data.frame(rbind(p2, x))
}

## Concatenate
p <- data.frame(rbind(p1, p2))
p <- data.frame(p, sex = 1)
names(p) <- c("week", "day", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD", "sex")

pBoys <- p

##
pdfLinkGirls<- "https://media.tghn.org/medialibrary/2017/03/GROW_Newborn-zs-girls_bw_Table.pdf"

tempGirls <- pdftools::pdf_text(pdf = pdfLinkGirls)
tempGirls <- stringr::str_split(string = tempGirls, pattern = "\n")

## Page 1
temp1 <- tempGirls[[1]][9:41]

p1 <- NULL

for(i in 1:length(temp1)) {
  x <- stringr::str_split(string = temp1[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p1 <- data.frame(rbind(p1, x))
}

## Page 2
temp2 <- tempGirls[[2]][9:38]

p2 <- NULL

for(i in 1:length(temp2)) {
  x <- stringr::str_split(string = temp2[i], pattern = "[\ \\+]", simplify = TRUE)
  x <- x[x != ""]
  p2 <- data.frame(rbind(p2, x))
}

## Concatenate
p <- data.frame(rbind(p1, p2))
p <- data.frame(p, sex = 2)
names(p) <- c("week", "day", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD", "sex")

pGirls <- p

## Concatenate boys and girls data.frame
p <- data.frame(rbind(pBoys, pGirls))

names(p) <- c("week", "day", "-3SD", "-2SD", "-1SD", "0", "1SD", "2SD", "3SD", "sex")
row.names(p) <- 1:nrow(p)

## create tidy format table
bw_gestage_term_sd <- tidyr::pivot_longer(data = p,
                                          cols = "-3SD":"3SD",
                                          names_to = "sd",
                                          values_to = "bw")

usethis::use_data(bw_gestage_term_sd, overwrite = TRUE, compress = "xz")
