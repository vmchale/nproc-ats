let makePkg = https://raw.githubusercontent.com/vmchale/atspkg/master/pkgs/make-pkg.dhall

in λ(x : List Integer) → 
  makePkg { x = x, name = "nproc-ats", githubUsername = "vmchale" }
