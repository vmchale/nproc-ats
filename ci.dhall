let atsCi =
      https://raw.githubusercontent.com/vmchale/github-actions-dhall/master/ats-ci.dhall sha256:02a279eabfe92782c9cad344b7e63242850ccc10b94f4e22fbdb1e84d43bd229

in    atsCi.atsSteps [ atsCi.checkout, atsCi.atspkgInstall, atsCi.atsCheckPkg ]
    : atsCi.CI.Type
