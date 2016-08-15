
#' Construct a base URI for accessing DocumentDB
#'
#' @param database_account Name of database account
#'
#' @return base_uri Constructed base URI
#'
#' @export
#'
#' @describeIn docdb_uri_base
#'
#' @examples
#' docdb_uri_base("myDB")
docdb_uri_base<-function(database_account){
  if(!grepl("^[[:alnum:]]+$",database_account)) stop("Invalid account")
  base_uri<- sprintf("https://%s.documents.azure.com",database_account)
  return(base_uri)
}


#' Parse a base URI for accessing DocumentDB
#'
#' @param uri Unique Resource
#'
#' @return parsed Boolean, true where URI
#'
#' @export
#'
#' @describeIn docdb_uri_base
#'
#' @examples
#' docdb_uri_base_parse("https://myDB.documents.azure.com")
docdb_uri_base_parse<-function(uri){
  parsed<-grepl("^https://[[:alnum:]]+\\.documents\\.azure\\.com$",uri)
  return(parsed)
}

