(local notify (require :nfnl-plugin-example.nfnl.notify))

(fn setup []
  (notify.info "Hello, World!"))

{: setup}
