# Lung Cancer Survival Analysis

## Overview

This project examines how early detection and healthcare access affect survival years among individuals diagnosed with lung cancer, and whether this relationship varies by cancer stage and country development status.

## Data

The dataset contains approximately 220,000 observations from 25 countries. This analysis restricts the sample to individuals with a confirmed lung cancer diagnosis.

## Code Structure

The analysis is organized into separate R scripts:

- `R/01_load_data.R` → loads and cleans the dataset  
- `R/02_clean_data.R` → prepares analytic dataset  
- `R/03_make_table.R` → generates summary table  
- `R/04_make_figure.R` → creates visualization  
- `R/05_render_report.R` → renders the final report  

All outputs are saved in the `output/` folder and compiled into the final HTML report.

## How to generate the final report

Run:

```bash
make

