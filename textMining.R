install.packages('tm')
install.packages("wordcloud")
install.packages("pdftools")
library('tm')
library('wordcloud')
library('pdftools')
txt = pdf_text(file.choose()) ## State of Aging
head(txt)
str(txt)
cat(txt[121])
txt_corpus = Corpus(VectorSource(txt)) #TM
## V Corpus -> Volatile Corpus
## P Corpus -> Permanent Corpus
## VecroSource() is a reader function to create a Source Object from existing txt


### Data Cleaning ###
removePunctuation("Hello....///!!##$%% LPU") ## Removes the punctuations/ symbols in between

txt_corpus = tm_map(txt_corpus,removeNumbers)
lapply(txt_corpus[101],as.character)

txt_corpus=tm_map(txt_corpus,removePunctuation)
lapply(txt_corpus[1:2],as.character)

## Document term Matrix
#Data Preparation

#Stopwords#

dtm=DocumentTermMatrix(txt_corpus)
## Token is a single element of a text string ##
dtm=as.matrix(dtm)
View(dtm)
dtm=t(dtm)
occu = rowSums(dtm)
occu




## Packages for Color Coding the WordCloud

