OVERVIEW:
This archive contains supplementary files to the manuscript, "Improved constraints increase the predictivity and applicability of a linear programming-based dynamic metabolic modeling framework" by Justin Lee and Mark Styczynski. The included code and data are those used to generate base ODE data, perform parameter fitting, predict different metabolic phenotypes, and produce data found in the manuscript. Updated versions of this code are hosted at https://github.com/gtStyLab/lk-dfba-constraints.

Additional file descriptions are contained within each subdirectory.





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
Contains MATLAB scripts for E. coli system.

costa_LKDFBA
Contains MATLAB scripts for .

libLKDFBA
Directory containing the main LK-DFBA code. This directory must be on the MATLAB path for the scripts in the other directories to function.