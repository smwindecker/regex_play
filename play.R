# for single seconds 

coordinates <- "25° 33' 4,5\""
search_pattern <- '(\\d\\d).\\s(\\d\\d)\\W\\s(\\d)\\W.*'
replacement_string <- "$1 $2 0$3"

grepl(search_pattern, coordinates, perl = TRUE)
dms <- stringi::stri_replace_all_regex(
  coordinates, search_pattern, replacement_string)
  
