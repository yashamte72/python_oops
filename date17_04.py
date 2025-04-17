def add(a,b):
    return a+b

def subs(a,b):
    return a-b

def mul(a,b):
    return a*b

def dev(a,b):
    if b==0:
       return print("cannot devide by o ")
    return a/b

while True:
    print("welcome to simple calculator")
    print("1.addition")
    print("2.substraction")
    print("3.multiplication")
    print('4.devision')
    print("5.close calculator")

    choice = float(input("enter your choise from 1 to 5 :"))

    if choice == 5:
        print("goodbye! may we meet again")
        break


    if choice in [1,2,3,4]:
        try:
            num1 = float(input("enter your first number :"))
            num2 = float(input("enter your seccond number :"))
        except ValueError:
            print("enter only numbers")
            continue
        if choice ==1:
            print("result :"+ add(num1,num2))
        if choice ==2:
            print("result:"+ subs(num1,num2))
        if choice ==3:
            print("result :"+ mul(num1,num2))
        if choice ==4:
            print("result :"+ dev(num1,num2))

