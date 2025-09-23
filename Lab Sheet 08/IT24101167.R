setwd("C:\\Users\\IT24101167\\Desktop\\IT24101167")
data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

#1
popmn<-mean(Nicotine)
popmn
popvar<-var(Nicotine)
popvar

#2
samples<-c()
n<-c()
for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

samples
n

colnames(samples)=n
samples 

s.means<-apply(samples,2,mean)
s.means

s.vars<-apply(samples,2,var)
s.vars

#3
samplemean<-mean(s.means)
samplemean
samplevars<-var(s.means)
samplevars

#4
popmn
samplemean

#5
truevar=popvar/5
truevar
samplevars

#Exercise
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)
#1
popmn<-mean(Weight.kg.)
popmn

popvar<-var(Weight.kg.)
popvar

#2
samples<-c()
n<-c()
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n
samples

s.means<-apply(samples,2,mean)
s.means
s.vars<-apply(samples,2,var)
s.vars

#3

#3
samplemean<-mean(s.means)
samplevars<-var(s.means)

popmn
samplemean

truevar=popvar/6
truevar
samplevars
