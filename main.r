data<-read.csv("HT-WT-Age.csv")    
View(data)                                 
dim (data)                                 
str(data)                                    
var=data$HT                      

 mx=max(var)                    
 mx          
 mn=min(var)                  
 mn                                
 width=(mx-mn)/5      
 width                            
 bins=seq(mn,mx,width)  

 scores=cut(var, bins)  
 table(scores)               
 transform(table(scores))
 freq_table=transform(table(scores))
 transform(freq_table,Rel_freq=prop.table(Freq),Cum_Freq=cumsum(Freq))

 hist(var,breaks = bins, main= "Height Vs Frequency", xlab= "Height", 
 col="green")
 var=data$WT            

 mx=max(var)            
 mx                     
 mn=min(var)            
 mn                     
 width=(mx-mn)/5   
 width             
 bins=seq(mn,mx,width)
 scores=cut(var, bins) 
 table(scores)   
 transform(table(scores))
 freq_table=transform(table(scores))
 transform(freq_table,Rel_freq=prop.table(Freq),Cum_Freq=cumsum(Freq))

 hist(var,breaks = bins, main= "Weight Vs Frequency", xlab= "Weight", 
 col="blue")
data<-read.csv("ToyotaCorolla.csv")  
 View(data)   
 
 dim (data)   

 
 str(data) 
 

var=data$Price
mx=max(var) 
mx          

mn=min(var)  
mn           


width=(mx-mn)/5  
width      

 
bins=seq(mn,mx,width) 
 
Class=cut(var, bins)  
 
table(Class) 
transform(table(Class))
freq_table=transform(table(Class))
transform(freq_table,Rel_freq=prop.table(Freq),Cum_Freq=cumsum(Freq))

 
  hist(var,breaks = bins, main= "Price Vs Frequency", xlab= "Price", col="purple")
 
 var=data$Age
 mx=max(var)  
 mx           
 mn=min(var) 
 mn          
 width=(mx-mn)/8 
 width      
 
 bins=seq(mn,mx,width)
 
 Class=cut(var, bins) 
 
 table(Class) 
 transform(table(Class))
 freq_table=transform(table(Class))
 transform(freq_table, Rel_freq=prop.table(Freq), Cum_Freq=cumsum(Freq))

 hist(var,breaks = bins, main= "Age Vs Frequency", xlab= "Age", col="Yellow")

automatic_counts <- table(data$Automatic)
barplot(automatic_counts, col = "grey", main = "Automatic", xlab = "Options")

# Qualitative Variable - FuelType
fuel_type_counts <- table(data$FuelType)
barplot(fuel_type_counts, col = "lightgreen", main = "FuelType", xlab = "Options")

 
