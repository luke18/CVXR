% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/solver.R
\docType{methods}
\name{status_map,ECOS-method}
\alias{status_map,ECOS-method}
\title{ECOS Status Map}
\usage{
\S4method{status_map}{ECOS}(solver, status)
}
\arguments{
\item{solver}{A \linkS4class{ECOS} object.}

\item{status}{An exit code returned by ECOS:
\describe{
   \item{ECOS_OPTIMAL (0)}{Problem solved to optimality.}
   \item{ECOS_PINF (1)}{Found certificate of primal infeasibility.}
   \item{ECOS_DINF (2)}{Found certificate of dual infeasibility.}
   \item{ECOS_INACC_OFFSET (10)}{Offset exitflag at inaccurate results.}
   \item{ECOS_MAXIT (-1)}{Maximum number of iterations reached.}
   \item{ECOS_NUMERICS (-2)}{Search direction unreliable.}
   \item{ECOS_OUTCONE (-3)}{\eqn{s} or \eqn{z} got outside the cone, numerics?}
   \item{ECOS_SIGINT (-4)}{Solver interrupted by a signal/ctrl-c.}
   \item{ECOS_FATAL (-7)}{Unknown problem in solver.}
}}
}
\value{
A string indicating the status, either "optimal", "infeasible", "unbounded", "optimal_inaccurate", "infeasible_inaccurate", "unbounded_inaccurate", or "solver_error".
}
\description{
Map of ECOS status to CVXR status.
}
