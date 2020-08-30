





lsTables <-
        function(conn,
                 ...) {
                RMySQL::dbListTables(conn = conn,
                                     ...)
        }