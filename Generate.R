library(quarto)

n <- 2

for (i in 1:n) {
  timeSys <- Sys.time()
  set.seed(timeSys)
  seedcalc <- trunc(runif(1,100000,999999))
  
  outputName <- paste(seedcalc,".html",sep="")
  
  quarto_render(
    input = "Level 0 Character Generator.qmd", 
    execute_params = list(
      seed = seedcalc
    ),
    output_file = outputName
  )
}