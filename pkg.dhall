let prelude = https://raw.githubusercontent.com/vmchale/atspkg/master/dhall/.dhall

in λ(x : List Integer) → 
  prelude.makePkg { x = x, name = "nproc-ats", githubUsername = "vmchale" }
