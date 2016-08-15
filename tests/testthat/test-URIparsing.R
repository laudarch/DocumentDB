context("URI parsing")

test_that("docdb_uri_base", {

  expect_equal(docdb_uri_base("myDB"),"https://myDB.documents.azure.com")
  expect_equal(docdb_uri_base("myDB1"),"https://myDB1.documents.azure.com")
  expect_error(docdb_uri_base("myDB_"),"Invalid account")
  expect_error(docdb_uri_base("myDB!"),"Invalid account")

})

test_that("docdb_uri_base_parse", {
  expect_equal(docdb_uri_base_parse("https://myDB.documents.azure.com"),TRUE)
  expect_equal(docdb_uri_base_parse("https://myDB12213.documents.azure.com"),TRUE)
  expect_equal(docdb_uri_base_parse("https://myDB.documents.azure.comkjfshgkfjhg"),FALSE)
  expect_equal(docdb_uri_base_parse("https://myDB_.documents.azure.com"),FALSE)
  expect_equal(docdb_uri_base_parse("https://myDB!.documents.azure.com"),FALSE)
})

