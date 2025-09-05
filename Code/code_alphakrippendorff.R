library(readxl)

# Read the file

base = read_excel("ADD FILE NAME.xlsx")


# Creating a copy with the same number of rows
base1=base
n=nrow(base)
# Total of annotators is three, so r=n/3
r=n/3

#  NAs are filled with repeated data from column 3 –second column with categories– to column 12 –last column with categories
for(i in 1:n){
  for(j in 3:12) if(base[i,j] %in% base[i,2:(j-1)]) base1[i,j]=NA
}

# Create base2 based on what's in base1
base2=data.frame(matrix(0,nrow=n,ncol=ncol(base)))
names(base2)=names(base)
#se recorren todas las columnas del archivo, el 13 indica la última columna
base2[,c(1,13)]=base[,c(1,13)]

# Loop through all columns with categories (2 to 12)
for(i in 1:n){
  for(j in 2:12){
    if(!is.na(base1[i,j]) & base1[i,j]=="affect") base2[i,j]=1 else{
      if(!is.na(base1[i,j]) & base1[i,j]=="appreciation") base2[i,j]=2 else{
        if(!is.na(base1[i,j]) & base1[i,j]=="judgement") base2[i,j]=4
    }
}
  }
}

# Create the factor "k" which gives all possible combinations based on the category columns
k=factor(apply(base2[,2:12],1,sum))
levels(k)=c("affect","appreciation","affect & appreciation","judgement","affect & judgement","appreciation & judgement","all")

# Create base3 to use with the "irr" package for 3 annotators
# (if there are 2 annotators, change to: base3 = rbind(k[1:r], k[(r+1):n]))
base3=rbind(k[1:r],k[(r+1):(2*r)],k[(2*r+1):n])

# Calculate Krippendorff's alpha using the "irr" package
library(irr)
kripp.alpha(base3)
