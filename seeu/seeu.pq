// This file contains your Data Connector logic
[Version = "1.0.0"]
section seeu;

[DataSource.Kind="seeu", Publish="seeu.Publish"]
shared seeu.Contents = (optional message as text) =>
    let
        _message = if (message <> null) then message else "(no message)",
        a = "Hello from seeu: " & _message
    in
        a;

// Data Source Kind description
seeu = [
    Authentication = [
        // Key = [],
        // UsernamePassword = [],
        // Windows = [],
        Anonymous = []
    ]
];

// Data Source UI publishing description
seeu.Publish = [
    Beta = true,
    Category = "Other",
    ButtonText = { Extension.LoadString("ButtonTitle"), Extension.LoadString("ButtonHelp") },
    LearnMoreUrl = "https://powerbi.microsoft.com/",
    SourceImage = seeu.Icons,
    SourceTypeImage = seeu.Icons
];

seeu.Icons = [
    Icon16 = { Extension.Contents("seeu16.png"), Extension.Contents("seeu20.png"), Extension.Contents("seeu24.png"), Extension.Contents("seeu32.png") },
    Icon32 = { Extension.Contents("seeu32.png"), Extension.Contents("seeu40.png"), Extension.Contents("seeu48.png"), Extension.Contents("seeu64.png") }
];
