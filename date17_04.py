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
    print(/n"welcome to simple calculator")
    print("1.addition")
    print("2.substraction")
    print("3.multiplication")
    print('4.devision')
    print("5.close calculator")

    choice = float(input("enter your choise from 1 to 5 :"))

    if choice == 5:
        print("goodbye! may we meet again")
        