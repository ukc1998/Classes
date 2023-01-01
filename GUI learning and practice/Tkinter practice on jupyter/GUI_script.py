from tkinter import *   
from Codeforbrowsingfiles import *
#creating the application main window.
def GUIfunction():  
    variable = Tk()  
      
    variable.geometry("1000x1000")  

    variable.title('PDF Merger')  

    #creating a simple canvas  
    c = Canvas(variable,bg = "grey",height = "1000", width = "1500")    
    c.pack()

    Directory_Label = Label(variable,text = "Directory: ").place(x = 5, y = 50)  
    entered_directory = Entry(variable).place(x = 80, y = 50)  
     

    b1 = Button(variable,command = browser(entered_directory), text = "Search",activeforeground = "red",fg = "blue",activebackground = "yellow", bg = "pink", pady = 10)  
      
    b2 = Button(variable, text = "Merge",activeforeground = "red",fg = "blue", activebackground = "yellow", bg = "pink", pady = 10)  
      
    b1.place(x = 30, y = 170)  
      
    b2.place(x = 530, y = 170)
    

    sb = Scrollbar(variable)  
    sb.pack(side = RIGHT, fill = Y)

    mylist = Listbox(variable, yscrollcommand = sb.set )
    for i in browser(entered_directory):
        mylist.insert(END, i)
    mylist.place(x = 30, y = 270)  
    sb.config( command = mylist.yview )
    variable.mainloop()