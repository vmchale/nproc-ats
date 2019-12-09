let atsCi =
        https://raw.githubusercontent.com/vmchale/github-actions-dhall/master/ats-ci.dhall sha256:0c412c030972bda013641661c8185bc59f653253ee316d68dbada456fb6343da
      ? https://raw.githubusercontent.com/vmchale/github-actions-dhall/master/ats-ci.dhall

in    atsCi.atsSteps
        [ atsCi.checkout
        , atsCi.atspkgInstall
        , atsCi.atsCheckPkg
        ]
    : atsCi.CI.Type
