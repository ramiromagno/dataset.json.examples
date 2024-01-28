#' Uncompress xz
#'
#' [unxz()] decompresses a xz file into a new file.
#'
#' @param from A path to a xz file.
#' @param to A path to a new file (uncompressed).
#'
#' @returns This function is ran for its side effect of creating a new file and
#' returns its path, i.e. `to`.
#'
#' @examples
#' newfile <- file.path(tempdir(), "ae.json")
#' unxz(from = example_path("ae"), to = newfile)
#'
#' @export
unxz <- function(from, to) {

  args <- recycle_common(from = from, to = to)
  map2(args$from, args$to, unxz_)
}


unxz_ <- function(from, to) {
  # Check if the xz file exists
  if (!file.exists(from)) {
    stop("The specified xz file does not exist.")
  }

  # Open the xz file for reading
  con_in <- xzfile(from, "rb")

  # Open the output file for writing
  con_out <- file(to, "wb")

  # Read from the xz file and write to the output file
  while (TRUE) {
    data <- readBin(con_in, "raw", 8192)
    if (length(data) == 0) {
      break
    }
    writeBin(data, con_out)
  }

  # Close the connections
  close(con_in)
  close(con_out)

  return(to)
}
