#' @title
#' Query a MySQL Database
#' @param conn PARAM_DESCRIPTION
#' @param sql_statement PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[RMySQL]{character(0)}}
#' @rdname query
#' @export
#' @importFrom RMySQL dbSendQuery dbFetch dbClearResult


query <-
        function(conn,
                 sql_statement) {

                res <-
                RMySQL::dbSendQuery(conn = conn,
                                    statement = sql_statement)

                resultset <-
                        RMySQL::dbFetch(res = res,
                                        n = -1)

                RMySQL::dbClearResult(res = res)

                resultset
        }