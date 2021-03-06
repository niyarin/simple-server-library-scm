(include "../../src/lib-simple-server.scm")

(import (scheme base) (scheme write) (scheme read) (lib-simple-server))
(define my-server (make-simple-server echo-listener "0"))
(display "soclet:")(display (ref-server-socket my-server))(newline)
(display "send message like \"nc 127.0.0.1 <port>\"")(newline)
(simple-server-start my-server)
