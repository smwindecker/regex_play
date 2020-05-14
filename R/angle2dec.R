angle2dec <- function (coordinates, 
                       search_pattern, 
                       replacement_string) {
  
  dms <- stringi::stri_replace_all_regex(
    coordinates, search_pattern, replacement_string)
  
  x <- do.call(rbind, strsplit(dms, split = ' '))
  decimel_coords <- apply(x, 1L, function(y) {
    y <- as.numeric(y)
    -1 * (y[1] + y[2]/60 + y[3]/3600)
  })
  return(decimel_coords)
}