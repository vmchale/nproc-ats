let prelude = https://raw.githubusercontent.com/vmchale/ats-concurrency/master/pkg.dhall

in λ(x : List Natural) →
  prelude.makePkg { x = x, name = "nproc-ats", githubUsername = "vmchale" }
