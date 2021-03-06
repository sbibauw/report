context("format_model")

test_that("format_model", {
  library(circus)

  testthat::expect_equal(format_model(circus::download_model("lm_1")), "linear model")
  testthat::expect_equal(format_model(circus::download_model("glm_1")), "logistic model")
  testthat::expect_equal(format_model(circus::download_model("glm_2")), "probit model")

  testthat::expect_equal(format_model(circus::download_model("lmerMod_1")), "linear mixed model")
  testthat::expect_equal(format_model(circus::download_model("merMod_1")), "logistic mixed model")
  testthat::expect_equal(format_model(circus::download_model("merMod_2")), "probit mixed model")

  testthat::expect_equal(format_model(circus::download_model("stanreg_lm_1")), "Bayesian linear model")
  testthat::expect_equal(format_model(circus::download_model("stanreg_glm_1")), "Bayesian logistic model")

  model <- glm(vs ~ mpg, data=mtcars, family="poisson")
  testthat::expect_equal(format_model(model), "general linear model (poisson family with a log link)")
})
