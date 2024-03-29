OVERVIEW:
This archive contains supplementary files to the manuscript, "Improved constraints increase the predictivity and applicability of a linear programming-based dynamic metabolic modeling framework" by Justin Lee and Mark Styczynski. The included code and data are those used to generate base ODE data, perform parameter fitting, predict different metabolic phenotypes, and produce data found in the manuscript. Updated versions of this code are hosted at https://github.com/gtStyLab/lk-dfba-constraints.

Additional file descriptions are contained within each subdirectory.
Data was generated using MATLAB 2018b, COPASI 4.24 (Build 197), and Gurobi 8.1.0.




USER GUIDE:
The included directories contain pipelines for the synthetic systems and two biological systems described in the main text.

The workflow in both cases is the same:
1) Generate model data
2) Perform parameter fitting for various constraint methods
3) Predict different metabolic phenotypes
4) Perform error analysis

The results produced when using noisy data may not exactly match with the results found in the manuscript, as noise is randomly generated. However, the results produced when using noiseless data should match those found in the manuscript.





DIRECTORIES AND OTHER FILES:

Synthetic_LKDFBA:
Contains MATLAB scripts for all synthetic systems.

chass_LKDFBA:
Contains MATLAB scripts for the E. coli system.

costa_LKDFBA:
Contains MATLAB scripts for the yeast system.

libLKDFBA:
Directory containing the main LK-DFBA code. This directory must be on the MATLAB path for the scripts in the other directories to function.

SyntheticModels_heatmaps.xlsx:
Contains error data and heatmap figures found in the manuscript for the synthetic systems.

BiologicalModels_heatmaps.xlsx:
Contains error data and heatmap figures found in the manuscript for the E. coli and yeast systems.

ecoli_parameters.xlsx:
Contains E. coli parameters used.