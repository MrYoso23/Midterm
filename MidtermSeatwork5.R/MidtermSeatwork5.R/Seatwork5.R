##Using R, implemented with function

##1.1 Read an Image Locally
install.packages("imager")
library(imager)
allan <- system.file('extdata/Ember.jpg', package='imager')
ember <- load.image("C:/Users/RM A-225/Documents/Allan/Midterm/MidtermSeatwork5.R/MidtermSeatwork5.R/Ember.jpg")
plot(ember)


##1.2 Read an Image THRU web
install.packages("magick")
library(magick)
Tiger <- image_read('https://upload.wikimedia.org/wikipedia/commons/3/3b/Royal_Bengal_Tiger_at_Kanha_National_Park.jpg')
image_flop(Tiger)

##Image Augmentation:

##2.1Resize image locally
library(imager)
fpath <- system.file('extdata/Storm.jpg', package='imager')
storm <- load.image("C:/Users/RM A-225/Documents/Allan/Midterm/MidtermSeatwork5.R/MidtermSeatwork5.R/Storm.jpg")
sub <- function(data,w,h){
  resize(data,w,h)
}
x <- sub(boats,250,250)
plot(x,main="RESIZED")
save.image(x, "C:/Users/RM A-225/Documents/Allan/Midterm/MidtermSeatwork5.R/Augmented_image/Stormresize.jpg")
##Resize image THRU web

##2.2 Grayscale
library(imager)
fpath <- system.file('extdata/Tulips.jpg',package='imager') 
tulip <-load.image("C:/Users/RM A-225/Documents/Allan/Midterm/MidtermSeatwork5.R/MidtermSeatwork5.R/Ember.jpg")
subset <-function(data,x){
  grayscale(data, method = "Luma", drop = x)
}
y <- subset(tulip,TRUE)
plot(y)
save.image(y, "C:/Users/RM A-225/Documents/Allan/Midterm/MidtermSeatwork5.R/Augmented_image/EmberNew.jpg")

##2.3 Invert Image
library(imager)
fpath <- system.file('extdata/truck.jpg',package='imager')
truck <- load.image("C:/Users/RM A-225/Documents/Allan/Midterm/MidtermSeatwork5.R/MidtermSeatwork5.R/Earth.jpg")
subset <- function(data,x){
  imrotate(data,x) %>% plot(main="Rotating")
}
y <- subset(truck,180)
plot(y)
save.image(y, "C:/Users/RM A-225/Documents/Allan/Midterm/MidtermSeatwork5.R/Augmented_image/EarthNew.jpg")

