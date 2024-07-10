# A COVID-19 Vaccine Data Analysis using SQL and Tableau.

The primary objective of this project is to analyze and compare the success of COVID-19 vaccine rollout initiatives across different regions using SQL. By examining key metrics such as the percentage of the population vaccinated, the total number of people vaccinated, and each region's contribution to the global vaccination effort, this project aims to provide insights into the effectiveness and efficiency of vaccination campaigns worldwide.

## Requirements
- SSMS
- Tableau Public

## Data
This dataset is a collection of the COVID-19 data maintained by Our World in Data. The metrics we will be focusing on are:
- Continent
- Locations
- Population
- Date
- Deaths
- People vaccinated

[Our World in Data COVID-19 dataset](https://ourworldindata.org/covid-deaths)

## Methodology
- Data Exploration with SQL
- Visualization and dashboard with Tableau Public

## Results

[COVID-19 Vaccination Analysis Dashboard](https://public.tableau.com/views/COVID-19VaccinationAnalysis_17205778688560/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

### Global Numbers
- individuals vaccinated: 5,685,252,607 (not accounting for multiple doses + boosters)
- Total Deaths: 7,055,443
- Percentage of global population vaccinated:  ~70%

### Total Vaccination Count per Continent
Although, the count was affected by the size of the population, it is interesting to note that not all regions' vaccination rate was proportional.
- Asia: 3,689,438,297
- Africa: 555,027,330. Had the lowest vaccination rate out of all regions (~50%).
- Europe: 523,814,280
- North America: 458,563,506
- South America: 375,459,127
- Oceania: 28,960,501. Lowest vaccination count but largely due to smaller population. Vaccine initiatives were effective as it had ~80% of the population vaccinated.

### Vaccination Rate per Country
Interestingly, some countries had vaccination rates that exceeded local population (due to tourists or differences in data collection)
![image](https://github.com/Sohom-Chakma/Global-COVID-19-Vaccination-Rollout-A-Data-Analysis-Project/assets/155359412/460443ea-6f96-41eb-839a-9a4550190bb8)

### Vaccination Time-Series Analysis
- Vaccine initiatives began in December of 2020.
- Accelerated growth during February of 2021.
- October and December of 2021 saw the vaccination rate stabilize as majority of nations were successful in vaccinating the vast majority of the population.
- Predictions (shaded area) show continued vaccination efforts into 2022 with varying levels of certainty. India is predicted to have the highest rate of change followed by China while other nations show stabilization. 
![image](https://github.com/Sohom-Chakma/Global-COVID-19-Vaccination-Rollout-A-Data-Analysis-Project/assets/155359412/951e0490-0229-4f0c-ad27-5b34d062d277)

## Acknowledgements
All data was sourced from [Our World in Data](https://ourworldindata.org/)






