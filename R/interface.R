intf_size <- function(constant) {
  if((is.null(dim(constant)) && length(constant) == 1) ||
     (!is.null(dim(constant)) && all(dim(constant) == c(1,1))))
    return(c(1,1))
  else if(is.vector(constant) && !is.list(constant))
    return(c(1,length(constant)))
  else if(is.matrix(constant) || is(constant, "Matrix"))
    return(dim(constant))
  else
    stop("Unknown class: ", class(constant))
}

intf_sign <- function(constant) {
  c(min(constant) >= 0, max(constant) <= 0)
}

intf_scalar_value <- function(constant) {
  if(is.list(constant))
    constant[[1]]
  else
    as.numeric(constant)
}

intf_convert_if_scalar <- function(constant) {
  if(all(intf_size(constant) == c(1,1)))
    intf_scalar_value(constant)
  else
    constant
}

intf_block_add <- function(mat, block, vert_offset, horiz_offset, rows, cols, vert_step = 1, horiz_step = 1) {
  block <- matrix(block, nrow = rows, ncol = cols)
  vert_idx <- seq(vert_offset + 1, vert_offset + rows, vert_step)
  horiz_idx <- seq(horiz_offset + 1, horiz_offset + cols, horiz_step)
  mat[vert_idx, horiz_idx] <- mat[vert_idx, horiz_idx] + block
  mat
}
