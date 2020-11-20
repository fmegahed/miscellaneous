# Median Filter

# Inputs to the function are:
#x is the data
#d is the number of overlapping observations in the window
#w is the window size
med.fil<-function(x,d,w){
  ms = {}
  i = 1
  while( w+d*(i-1) < length(x))
  {
    ms[i] = median(x[(1+d*(i-1)):(w+d*(i-1))])
    i = i + 1
  }
  return(ms)
}