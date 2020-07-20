#' Disconnect MySQL 5.5 Database
#' @importFrom RMySQL dbDisconnect
#' @param conn Connection object
#' @param ... Additional arguments passed to RMySQL's dbDisconnect function.
#' @param remove If TRUE, removes the conn object from the Global Environment.
#' @export


dcMySQL5.5 <-
        function(conn,
                 ...,
                 remove = FALSE) {


                RMySQL::dbDisconnect(conn = conn,
                                     ...)

                if (remove) {
                        rm(list = deparse(substitute(conn)), envir = globalenv())
                }

        }