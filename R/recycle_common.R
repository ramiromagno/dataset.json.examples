recycle_common <- function(..., .size = NULL) {
  args <- list(...)
  args_names <- names(args)

  if (is.null(.size)) {
    # Determine the common size based on input lengths
    lengths <- sapply(args, length)
    .size <- max(lengths)
    if (any(lengths != .size & lengths != 0)) {
      stop("Input vectors have incompatible sizes.")
    }
  }

  # Recycle each input to the common size
  recycled_args <- lapply(args, function(x) {
    if (length(x) == 0)
      return(rep(x, .size))
    if (length(x) == 1)
      return(rep(x, .size))
    if (length(x) != .size) {
      if (.size %% length(x) != 0) {
        stop("Input vector length is not a multiple of the desired size.")
      }
      rep(x, length.out = .size)
    } else {
      x
    }
  })

  if (is.null(args_names)) {
    recycled_args
  } else {
    stats::setNames(recycled_args, args_names)
  }
}
