test_that("Test scalar LP problems", {
  x1 <- Variable()
  x2 <- Variable()
  obj <- Minimize(-x1-x2)
  constraints <- list(2*x1 + x2 >= 1, x1 + 3*x2 >= 1, x1 >= 0, x2 >= 0)
  p_unb <- Problem(obj, constraints)
  p_inf <- Problem(Minimize(x1), list(x1 >= 0, x1 <= -1))
  for(solver in c("ECOS", "SCS")) {
    print(solver)
    result <- solve(p_unb, solver = solver)
    expect_equal(tolower(result$status), "unbounded")
    result <- solve(p_inf, solver = solver)
    expect_equal(tolower(result$status), "infeasible")
  }
})

test_that("Test vector LP problems", {
  # Infeasible and unbounded problems
  x <- Variable(5)
  p_inf <- Problem(Minimize(sum(x)), list(x >= 1, x <= 0))
  p_unb <- Problem(Minimize(sum(x)), list(x <= 1))
  for(solver in c("ECOS", "SCS")) {
    print(solver)
    result <- solve(p_unb, solver = solver)
    expect_equal(tolower(result$status), "unbounded")
    result <- solve(p_inf, solver = solver)
    expect_equal(tolower(result$status), "infeasible")
  }
})

test_that("Test the optimal inaccurate status", {
  x <- Variable(5)
  prob <- Problem(Maximize(sum(sqrt(x))), list(x <= 0))
  result <- solve(prob, solver = "SCS")
  expect_equal(tolower(result$status), "optimal")
  expect_false(is.na(result$value))
})
