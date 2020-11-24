import Pkg;
Pkg.add("Plots")
using Plots # loads the Plots package into workspace. It may take a while.

# FETCH DATA
using DelimitedFiles
EVDdata = DelimitedFiles.readdlm("wikipediaEVDdatesconverted.csv", ',')  # comma delimited
epiDays = EVDdata[:, 1]  # all rows (':') for column 1
allCases = EVDdata[:, 2] # all rows (':') for column 2

Plots.plot(epiDays, allCases)
