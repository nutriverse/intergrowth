context("Estimate gestational age")

test_that("Gestational age result is list", {
  expect_is(calculate_gestage_crl(date = "2016-23-12", crl = 17), "list")
  expect_is(calculate_gestage_hcfl(date = "2016-23-12", hc = 130, fl = 20), "list")
  expect_is(calculate_gestage(date = "2016-23-12", crl = 17), "list")
})


