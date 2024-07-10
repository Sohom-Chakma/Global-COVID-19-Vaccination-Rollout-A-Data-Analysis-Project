#A COVID-19 Vaccine Data Analysis using SQL and Tableau.

## Description:
The primary objective of this project is to analyze and compare the success of COVID-19 vaccine rollout initiatives across different regions using SQL. By examining key metrics such as the percentage of the population vaccinated, the total number of people vaccinated, and each region's contribution to the global vaccination effort, this project aims to provide insights into the effectiveness and efficiency of vaccination campaigns worldwide.

## Requirements
- SSMS
- Tableau Public

## Data
COVID-19 dataset is a collection of the COVID-19 data maintained by Our World in Data. The metrics we will be focusing on are:
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
<div class='tableauPlaceholder' id='viz1720581987642' style='position: relative'><noscript><a href='#'><img alt='Dashboard 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;CO&#47;COVID-19VaccinationAnalysis_17205778688560&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='COVID-19VaccinationAnalysis_17205778688560&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;CO&#47;COVID-19VaccinationAnalysis_17205778688560&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1720581987642');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.height='1077px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
### Global Numbers
- individuals vaccinated atleast once (not accounting for multiple doses + boosters): 5,685,252,607
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






