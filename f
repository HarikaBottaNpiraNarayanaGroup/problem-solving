Problem Solving Question 1
There are 100 doors, all closed. In a nearby cage are 100 monkeys.  
The first monkey is let out, and runs along the doors opening every one. The second monkey is then let out, and runs along the doors closing the 2nd, 4th, 6th,... - all the even-numbered doors. The third monkey is let out. He attends only to the 3rd, 6th, 9th,... doors (every third door, in other words), closing any that is open and opening any that is closed, and so on. After all 100 monkeys have done their work in this way, what state are the doors in after the last pass?

doorsList=[] #emply list
doors=100
monkeys=100
# here 0 indicate closed doors 1 indicates open doors
for i in range(0,doors):
    doorsList.append(0)# all doors closed initially 
for i in range(1,monkeys+1):
    k=1 
    # d_num for multiplication like suppose i=2 k=1 2*1 k=2 2*2 k=3 2*3...
    d_num=k*i 
    while(d_num<doors):# we need to for 100 doors so i am using while up to 100
    #if door in close state we need to open
        if doorsList[d_num]==0:
            doorsList[d_num]=1 
    #if door in open state we need to close
        else:
            doorsList[d_num]=0 
        d_num=k*i 
        k=k+1 
        
openDoors=doorsList.count(1)# here i am finding count of opened doors 
closedDoors=doorsList.count(0)# here i am finding count of closed doors
print("opened doors: ",openDoors)
print("closed doors: ",closedDoors)
