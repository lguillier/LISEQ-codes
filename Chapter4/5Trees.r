####Packages
library(phytools)
library(dendextend)

#### Attention use of plotTree and plot (plot = better rendering)
### Below: need to adapt path, filenames of trees produced with Raxml

#######################################
###  5 TREES for CHAPTER 4
#######################################



## set path of nwk files
setwd('path') # put your path name

## Read tree

CC4<-read.tree("CC4.nwk")

## Adapt label
data_name_cc4<-read.csv("cc4.csv",header=TRUE,sep=';')

for (i in 1:37)
{  
pos<-grep(data_name_cc4$cc4_LISEQ[i],CC4$tip.label)
CC4$tip.label[pos]<-as.character(data_name_cc4$cc4_LISEQ_SNPaddress[i])
}

## Adapt color
colors=rep("red",37)
colors[17]<-c("black")
colors[27]<-c("blue")
colors[24]<-c("blue")
plot(CC4,tip.color=colors,adj=1,cex=0.4,use.edge.length=F)
CC4.laz<-ladderize(CC4,FALSE)
plot(CC4.laz,tip.color=colors,adj=1,cex=0.4,use.edge.length=F)
plot(CC4.laz,tip.color=colors)



## Read tree

CC101<-read.tree("CC101BS_1000_GTR.nwk")

## Adapt label
data_name_cc101<-read.csv("cc101.csv",header=TRUE,sep=';')

for (i in 1:68)
{  
  pos<-grep(data_name_cc101$cc101_LISEQ[i],CC101$tip.label)
  CC101$tip.label[pos]<-as.character(data_name_cc101$cc101_LISEQ_SNPaddress[i])
}

## Adapt colors
colors=rep("blue",68)
pos_human<-c(64,55,45,56,62,60,66,19,51,47,52,49,53,43,50,48)
colors[17]<-c("black")
colors[pos_human]<-c("red")

plot(CC101,tip.color=colors,cex=0.7)

## Read tree


CC8<-read.tree("RAxML_bestTree.CC8_1000BS-GAMMA.nwk")

## Adapt label
data_name_cc8<-read.csv("cc8.csv",header=TRUE,sep=';')
for (i in 1:99)
{  
  pos<-grep(data_name_cc8$cc8_LISEQ[i],CC8$tip.label)
  CC8$tip.label[pos]<-as.character(data_name_cc8$cc8_LISEQ_SNPaddress[i])
}
## Adapt colors
plot(CC8)
colors=rep("blue",99)
pos_human<-c(97,45,53,14,28,12,92,30,35,67,51,75,48,11,59,60,43,28,50,2,8,34,36,13)
colors[25]<-c("black")
colors[pos_human]<-c("red")

plot(CC8,tip.color=colors,cex=0.6)
plot(CC8,tip.color=colors,cex=0.6,adj=0.5)
plot(CC8,tip.color="black",use.edge.length=F)


## Read tree

CC9<-read.tree("RAxML_bestTree.CC9_1000BS-GAMMA.nwk")

## Adapt label
data_name_cc9<-read.csv("cc9.csv",header=TRUE,sep=';')
for (i in 1:111)
{  
  pos<-grep(data_name_cc9$cc9_LISEQ[i],CC9$tip.label)
  CC9$tip.label[pos]<-as.character(data_name_cc9$cc9_LISEQ_SNPaddress[i])
}
## Adapt colors
plot(CC9)
colors=rep("blue",111)
pos_human9<-c(23,110,22,21,20,43,70,42,69,6,84,86,14,62)
colors[25]<-c("black")
colors[pos_human9]<-c("red")

plot(CC9,tip.color=colors,cex=0.6)
plot(CC9,tip.color=colors,cex=0.4,adj=0.1)

## Read tree

CC121<-read.tree("RAxML_bestTree.CC121_1000BS-GAMMA.nwk")

## Adapt label
data_name_cc121<-read.csv("cc121.csv",header=TRUE,sep=';')
for (i in 1:188)
{  
  pos<-grep(data_name_cc121$cc121_LISEQ[i],CC121$tip.label)
  CC121$tip.label[pos]<-as.character(data_name_cc121$cc121_LISEQ_SNPaddress[i])
}
## Adapt colors
plot(CC121)
colors=rep("blue",188)
pos_human121<-c(141,28,29,169,143)
colors[164]<-c("black")
colors[pos_human121]<-c("red")
CC121r<-root(CC121,93,resolve.root=TRUE)
plot(CC121r,tip.color=colors,cex=0.3)


#######################################
### 2. A TREE (CC7) for illustrating method of chapter 8
#######################################
library(phytools)
library(dendextend)

setwd('path')# Change path


CC7<-read.tree("cc7_method.nwk")    # petite astuce pour meilleur aspect flip sur groupes sporadiques NO - SE

## Adapt label
data_name_cc7<-read.csv("CC7_2.csv",header=TRUE,sep=';')

for (i in 1:45)
{  
pos<-grep(data_name_cc7$cc7_LISEQ[i],CC7$tip.label)
CC7$tip.label[pos]<-as.character(data_name_cc7$cc7_LISEQ_SNPaddress[i])
}

plot(CC7,tip.color="black",adj=1,cex=0.4,use.edge.length=F)

## Adapt colors
colors=rep("blue",45)
colors[19]<-c("black")
pos_human7<-c(1,2,3,4,5,6,7,8,13,17,18,22,23,24,25,26,27,28,29,30,31,36,44)
colors[pos_human7]<-c("red")
plot(CC7,tip.color=colors,adj=0.1,cex=0.4)