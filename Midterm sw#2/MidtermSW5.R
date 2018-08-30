install.packages("imager")
install.packages("magick")
install.packages("argparse")



library(imager)
rico <- system.file('extdata/index.jpg', package = 'imager')
gelo <- load.image("C:/Users/RM A-225/Documents/Ricohermozo/Midterm_Repo/Midterm sw#2/cat.jpg")
plot(gelo)


library(imager)
fpath <- system.file('extdata/index.jpeg', package = 'imager')
cat <- load.image("C:/Users/RM A-225/Documents/Ricohermozo/Midterm_Repo/MIDTERMSW6/index.jpg")
sub <- function(data, w, h){
  resize(data, w, h)
}
x <- sub(boats, 250, 250)
plot(x, main = "RESIZED")
save.image(x, "C:/Users/RM A-225/Documents/Ricohermozo/Midterm_Repo/MIDTERMSW6/indexresized.jpg")


##2.2 Grayscale
library(imager)
fpath <- system.file('extdata/index1.jpg',package='imager') 
mine <-load.image("C:/Users/RM A-225/Documents/Ricohermozo/Midterm_Repo/MIDTERMSW6/index1.jpg")
subset <-function(data,x){
  grayscale(data, method = "Luma", drop = x)
}
y <- subset(mine,TRUE)
plot(y)
save.image(y, "C:/Users/RM A-225/Documents/Ricohermozo/Midterm_Repo/MIDTERMSW6/index1New.jpg")


##2.3 Invert Image
library(imager)
fpath <- system.file('extdata/dog.jpg',package='imager')
truck <- load.image("C:/Users/RM A-225/Documents/Ricohermozo/Midterm_Repo/MIDTERMSW6/dog.jpg")
subset <- function(data,x){
  imrotate(data,x) %>% plot(main="Rotating")
}
y <- subset(truck,180)
plot(y)
save.image(y, "C:/Users/RM A-225/Documents/Ricohermozo/Midterm_Repo/MIDTERMSW6/dogNew.jpg")












