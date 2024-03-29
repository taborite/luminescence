library(BayLum)
library(Luminescence)
library(readxl)
rm(list = ls())
graphics.off()
setwd("C:/Users/iande/Documents/Geologia/dataciones/luminiscencia/Resultados")
#cargar los datos
name = "L0531 290"
sample = read_excel("resultados analyst fdp.xlsx", sheet = name, col_names = T)
## load data file generated by the function Generate_DataFile
data(DATA1,envir = environment())
priorage <- c(10,60) # GDB3 is an old sample
Age <- Age_Computation(
  DATA = DATA1,
  SampleName = "GDB3",
  PriorAge = priorage,
  Iter = 100,
  quiet = TRUE)