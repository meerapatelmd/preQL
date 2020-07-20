#' Connect to MySQL v5.5 via Unix Sock
#' @param dbname database name as character string
#' @importFrom RMySQL dbConnect
#' @importFrom RMySQL MySQL
#' @export

connectMySQL5.5 <-
        function(dbname,
                 username,
                 password) {

                RMySQL::dbConnect(RMySQL::MySQL(),
                                  dbname = dbname,
                                  username = username,
                                  password = password,
                                  unix.socket = "/opt/local/var/run/mysql55/mysqld.sock")
        }



