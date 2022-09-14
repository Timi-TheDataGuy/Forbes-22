# FORBES - 2022 World's Billionaire's List Analysis using Power BI
Data Source is Excel. Used Power BI for the cleaning, transformation & analysis to draw out insights from the Forbes '22 Billionaire's list dataset. 

Since its inception in 1987, the Forbes Billionaire’s list has been one that has consistently attracted millions of engagements across the globe. The Forbes Billionaire’s List is an annual documentation of the World’s Billionaires. The list is based on their individual Net Worth which is based on their total documented assets, debts and other factors. 

A new development came up in 2018 as Forbes introduced Philanthropy Score as an additional index to consider in the listings. The Philanthropy score is an enhanced score that measures the generosity of the Billionaires. The Philanthropy Score ranges from 1 to 5, with 1 being the lowest and 5 the highest. The documentation includes the following:

- Data Gathering & Transformation
- Report Requirement
- Data Modelling
- Report Design
- Conclusion

# Data Gathering & Transformation
The data came in handy from the Maverick Data Analysis Challenge website in an Excel format. For easy analysis, the data needed to be transformed, and this was done with Power Query Editor. Here is the Power Query Script to clean the [Forbes Billionaire's Data](https://github.com/Timi-TheDataGuy/Forbes-22/blob/6d198c3c4f95ba2907612802cfe214aca2bc3fd3/CleanForbesData.pq)

# Report Requirement
While I started out with this data, the initial focus was to show how the Billionaires faired as regards Net Worth, but then as I journeyed beyond, I became more interested in checking the relationship between their Net Worths and their Philanthrophy Scores. 

# Data Modelling
For the data model, the tables that needed to be created/cleaned were:
| Table Name | Brief Description | Power Query Script |
| -- | -- | -- |
| Billionaire's Data | This would contain the information about the Billionaires (Name, Age, Net Worth etc) | [Billionaire's Data](https://github.com/Timi-TheDataGuy/Forbes-22/blob/6d198c3c4f95ba2907612802cfe214aca2bc3fd3/CleanForbesData.pq) |
| Date | A standard date table | |


After the cleaning/creation steps were completed, a relationship was created between the Billionaire's Data's and Date's table and it looks like this.
![relationship](https://user-images.githubusercontent.com/109515187/190156891-761f39fc-1504-4089-8c81-fda2c17be320.png)

# Report Design
Here is the final report design.
![new top 5](https://user-images.githubusercontent.com/109515187/190158261-49e87c7d-19b2-4a0f-832d-cdfd017f78b9.png)

# Conclusion
You can explore the interactive version of this report to see the full functionality and User Experience. [Forbes Billionaire's 2022 Data](https://app.powerbi.com/view?r=eyJrIjoiMGU4NTBjZTItZmYyNS00NjEzLTgyY2EtMmRiYTA1YmM0YTMzIiwidCI6ImE2ZWI4YTc2LWM1ZjAtNGUxZS1iNjJkLTQyNDgzZDczYjFhOCJ9)

