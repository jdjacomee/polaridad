library(twitteR)
library(httr)
require('ROAuth')
require('RCurl')
library(base64enc)

consumer_key <-"RFHeP55qj0ejWv7YiSceWTphX"
consumer_secret<-"YOOUNzPvlJCAIHo23AWGU6hRm9VYxP6AY60H0n3u3dBM44aHZS"
access_token<-"366852754-QE8L7hZs1J0WbtDTImo4P3qxzabRZ6OEY0E9ckOs"
access_secret<-"zUZ3rnyPHCLQxso43A8PvXY1a3jWp81yS8Z2Rr0w96YzB"

emisora <- "labrujaecuador"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

listaTweets <- searchTwitter(searchString = emisora, n=3700)

tweets <- twListToDF(listaTweets)

fecha <- Sys.Date()
nombreArchivo <- paste("C:/Users/David/Desktop/tweets/",emisora,"_",fecha,".txt", sep="")
nombreArchivo
write.table(x=tweets, file=nombreArchivo, col.names = TRUE, sep = ";")
