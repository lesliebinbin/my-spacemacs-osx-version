(lsp-register-client
 (make-lsp--client
  :new-connection
  (lsp-stdio-connection '("/home/lesliebinbin/Desktop/code-from-github/kotlin-language-server/server/build/install/server/bin/kotlin-language-server"))
  :major-modes '(kotlin-mode)
  :server-id 'kotlin-language-server
  ))
(provide 'lsp-kotlin)
