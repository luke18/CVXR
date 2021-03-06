% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elementwise.R
\docType{class}
\name{Abs-class}
\alias{Abs-class}
\alias{.Abs}
\alias{Abs}
\alias{to_numeric,Abs-method}
\alias{sign_from_args,Abs-method}
\alias{is_atom_convex,Abs-method}
\alias{is_atom_concave,Abs-method}
\alias{is_incr,Abs-method}
\alias{is_decr,Abs-method}
\alias{is_pwl,Abs-method}
\alias{graph_implementation,Abs-method}
\title{The Abs class.}
\usage{
Abs(x)

\S4method{to_numeric}{Abs}(object, values)

\S4method{sign_from_args}{Abs}(object)

\S4method{is_atom_convex}{Abs}(object)

\S4method{is_atom_concave}{Abs}(object)

\S4method{is_incr}{Abs}(object, idx)

\S4method{is_decr}{Abs}(object, idx)

\S4method{is_pwl}{Abs}(object)

\S4method{graph_implementation}{Abs}(object, arg_objs, size,
  data = NA_real_)
}
\arguments{
\item{x}{An \linkS4class{Expression} object.}

\item{object}{An \linkS4class{Abs} object.}

\item{values}{A list of arguments to the atom.}

\item{idx}{An index into the atom.}

\item{arg_objs}{A list of linear expressions for each argument.}

\item{size}{A vector with two elements representing the size of the resulting expression.}

\item{data}{A list of additional data required by the atom.}
}
\description{
This class represents the elementwise absolute value.
}
\section{Methods (by generic)}{
\itemize{
\item \code{to_numeric}: The elementwise absolute value of the input.

\item \code{sign_from_args}: The atom is positive.

\item \code{is_atom_convex}: The atom is convex.

\item \code{is_atom_concave}: The atom is not concave.

\item \code{is_incr}: A logical value indicating whether the atom is weakly increasing.

\item \code{is_decr}: A logical value indicating whether the atom is weakly decreasing.

\item \code{is_pwl}: Is \code{x} piecewise linear?

\item \code{graph_implementation}: The graph implementation of the atom.
}}

\section{Slots}{

\describe{
\item{\code{x}}{An \linkS4class{Expression} object.}
}}

