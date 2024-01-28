map2 <- function(.x, .y, .f, ...) {
  if (length(.x) != length(.y)) {
    stop("Lengths of `.x` and `.y` must be the same")
  }

  mapply(FUN = .f,
         .x,
         .y,
         MoreArgs = list(...),
         SIMPLIFY = FALSE)
}
