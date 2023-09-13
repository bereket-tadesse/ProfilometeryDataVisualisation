library(tidyverse)
library(ineq)

data1 <- read.csv(file.choose(), header=T)
data1

#piping : All variables
data1 %>%
  ggplot( aes(Time, rms))  + 
  geom_point(aes(size = Z, color = Light), alpha = 0.5) +
# geom_smooth(method = lm, se = F , colour = "grey") +  #se = stadard error
  facet_wrap(~Mag , labeller = labeller(Mag = c("2.5" = "Maginification: 2.5","10" = "Maginification: 10"))) +
  labs(title = "Time Vs Rouhgness of Kapton ", x = "Time (Min)", y= "Rouhgness (microns)")  +
  scale_y_continuous(expand = c(0,0),limits = c(0, 5))



#piping : Time Vs Light
data1 %>%
  ggplot(aes(Time, Light))  + 
  geom_point(size = 3, color = 'red', alpha = 0.5) +
  geom_smooth(aes(colour = "lm - linear"), method = lm, se = T , fill = 'brown', alpha = 0.2) +    #lm = linear model, se = stadard error
  facet_wrap(~Mag , labeller = labeller(Mag = c("2.5" = "Maginification: 2.5","10" = "Maginification: 10"))) +
  
  labs(title = "Time Vs Light Intensity", x = "Time (min)", y= "Light Intensity (%)") +
  scale_y_continuous(expand = c(0,0),limits = c(0, 0.5))


#piping : Time Vs Z-axis
data1 %>%
  ggplot(aes(Time ,Z ))  + 
  geom_point(size = 3, color = 'red', alpha = 1) +
 # geom_smooth(aes(colour = "lm - linear"), method = lm, se = T , fill = 'brown', alpha = 0.2) +    #lm = linear model, se = stadard erroS
  facet_wrap(~Mag , labeller = labeller(Mag = c("2.5" = "Maginification: 2.5","10" = "Maginification: 10"))) +
  labs(title = "Time Vs Z-axis (mm)", x = "Time (min)", y= "Z-axis (mm)")+
  scale_y_continuous(expand = c(0,0),limits = c(0, 10))


#piping : Time Vs rmsMicrons
data1 %>%
  ggplot(aes(Time ,rms ))  + 
  geom_point(size = 2, colour = 'blue', alpha = 0.3) +
 # geom_smooth(aes(colour = "linear fit"), method = lm, se = T , fill = 'brown', alpha = 0.2) +    #lm = linear model, se = stadard error
  facet_wrap(~Mag , labeller = labeller(Mag = c("2.5" = "Maginification: 2.5","10" = "Maginification: 10"))) +
  labs(title = "Time Vs rms(microns)", x = "Time (min)", y= "rms(microns)") +
  scale_y_continuous(expand = c(0,0),limits = c(0, 3)) 


