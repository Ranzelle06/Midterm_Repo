install.packages("imager")

library(imager)
rico <- system.file('extdata/cat.jpg', package = 'imager')
gelo <- load.image("C:/Users/Angelo/Ricohermozo/Midterm_Repo/Midterm sw#2/cat.jpg")
plot(gelo)

#resize
library(imager)
fpath <- system.file('extdata/cat.jpeg', package = 'imager')
cat <- load.image("C:/Users/Angelo/Ricohermozo/Midterm_Repo/Midterm sw#2/cat.jpg")
sub <- function(data, w, h){
  resize(data, w, h)
}
x <- sub(cat, 250, 250)
plot(x, main = "RESIZED")
save.image(x, "C:/Users/Angelo/Ricohermozo/Midterm_Repo/Midterm sw#2/catresized.jpg")


# Grayscale
library(imager)
fpath <- system.file('extdata/cat.jpg',package='imager') 
mine <-load.image("C:/Users/Angelo/Ricohermozo/Midterm_Repo/Midterm sw#2/catresized.jpg")
subset <-function(data,x){
  grayscale(data, method = "Luma", drop = x)
}
y <- subset(mine,TRUE)
plot(y)
save.image(y, "C:/Users/Angelo/Ricohermozo/Midterm_Repo/Midterm sw#2/catGray.jpg")


#Invert Image
library(imager)
fpath <- system.file('extdata/cat.jpg',package='imager')
truck <- load.image("C:/Users/Angelo/Ricohermozo/Midterm_Repo/Midterm sw#2/catGray.jpg")
subset <- function(data,x){
  imrotate(data,x) %>% plot(main="Rotating")
}
y <- subset(truck,180)
plot(y)
save.image(y, "C:/Users/Angelo/Ricohermozo/Midterm_Repo/Midterm sw#2/catInvert.jpg")












