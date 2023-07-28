(local {: describe : it} (require :plenary.busted))
(local assert (require :luassert.assert))
(local core (require :nfnl-plugin-example.nfnl.core))

(describe
  "first"
  (fn []
    (it "gets the first value"
        (fn []
          (assert.equals 1 (core.first [1 2 3]))))

    (it "returns nil for empty lists or nil"
        (fn []
          (assert.is_nil (core.first nil))
          (assert.is_nil (core.first []))))))
