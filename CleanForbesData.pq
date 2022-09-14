let
    Source = Csv.Document(File.Contents("C:\Users\Timileyin\OneDrive - Ha­-Shem Limited\Microsoft Teams Chat Files\Data Sets\Onyx Data DataDNA Dataset Challenge June 2022 - Forbes World's Billionaires List 2022.csv"),[Delimiter=",", Columns=22, Encoding=65001, QuoteStyle=QuoteStyle.Csv]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"age", Int64.Type}, {"finalWorth", Int64.Type}, {"year", Int64.Type}, {"month", Int64.Type}, {"birthDate", type date}, {"philanthropyScore", Int64.Type}}),
    #"Renamed Columns" = Table.RenameColumns(#"Changed Type",{{"rank", "Rank"}, {"personName", "Full Name"}, {"age", "Age"}, {"finalWorth", "Final Worth (000000)"}, {"year", "Year"}, {"month", "Month"}, {"category", "Category"}, {"source", "Source"}, {"country", "Country"}, {"state", "State"}, {"city", "City"}, {"countryOfCitizenship", "Country Of Citizenship"}, {"organization", "Organization"}, {"selfMade", "Self Made"}, {"gender", "Gender"}, {"birthDate", "Birth Date"}, {"title", "Title"}, {"philanthropyScore", "Philanthropy Score"}, {"residenceMsa", "ResidenceMsa"}, {"bio", "Bio"}}),
    #"Replaced Value" = Table.ReplaceValue(#"Renamed Columns",null,120,Replacer.ReplaceValue,{"Age"}),
    #"Added Conditional Column" = Table.AddColumn(#"Replaced Value", "Age Group", each if [Age] <= 25 then "Gen Z" else if [Age] <= 41 then "Millenials" else if [Age] <= 56 then "Gen X" else if [Age] <= 67 then "Boomers II" else if [Age] <= 76 then "Boomers I" else if [Age] <= 100 then "WWII" else if [Age] = 120 then "N/A" else null),
    #"Changed Type1" = Table.TransformColumnTypes(#"Added Conditional Column",{{"Age Group", type text}, {"Age", Int64.Type}}),
    #"Reordered Columns" = Table.ReorderColumns(#"Changed Type1",{"Rank", "Full Name", "Age", "Age Group", "Final Worth (000000)", "Year", "Month", "Category", "Source", "Country", "State", "City", "Country Of Citizenship", "Organization", "Self Made", "Gender", "Birth Date", "Title", "Philanthropy Score", "ResidenceMsa", "numberOfSiblings", "Bio", "about"}),
    #"Replaced Value1" = Table.ReplaceValue(#"Reordered Columns","F","Female",Replacer.ReplaceText,{"Gender"}),
    #"Replaced Value2" = Table.ReplaceValue(#"Replaced Value1","M","Male",Replacer.ReplaceText,{"Gender"})
in
    #"Replaced Value2"
