prj<-as.numeric(readline(prompt="Enter number of project"))
b=array()
c<-list(0)
for(i in 1:prj){
  act<-as.numeric(readline(prompt="Enter number of activities in project"))
  route<-as.numeric(readline(prompt="Enter number of routes in project"))
  resources<-as.numeric(readline(prompt="Enter number of resources for project"))
  a<-matrix(nrow=route,ncol=3)
  for(j in 1:route){
    act1<-as.numeric(readline(prompt="Enter activity 1"))
    act2<-as.numeric(readline(prompt="Enter activity 2"))
    time<-as.numeric(readline(prompt="Time taken"))
    a[j,]<-c(act1,act2,time)
  }
  b[i]<-sum(a[,3])
  c[[i]]<-a
}
d<-matrix(nrow = 2, ncol = prj)
d[1,]<-c(1:prj)
d[2,]<-b
d<-t(d)
d<-as.data.frame(d)
colnames(d)<-c("Project","TimeTaken")
d<-d[order(d$TimeTaken),]

