context("Estimate fetal growth metrics")

test_that("Fetal growth result is list", {
  expect_is(calculate_hc_gestage(gestage = "78+0", hc = 90), "list")
  expect_is(calculate_bpd_gestage(gestage = "78+0", bpd = 20), "list")
  expect_is(calculate_ac_gestage(gestage = "78+0", ac = 55), "list")
  expect_is(calculate_fl_gestage(gestage = "78+0", fl = 10), "list")
  expect_is(calculate_ofd_gestage(gestage = "78+0", ofd = 25), "list")
  #expect_is(calculate_ac_gestage(gestage = "78+0", ac = 55), "list")
})


