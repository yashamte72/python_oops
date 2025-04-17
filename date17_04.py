def add(a, b):
    return a + b

def subs(a, b):
    return a - b

def mul(a, b):
    return a * b

def dev(a, b):
    if b == 0:
        return "Cannot divide by 0"
    return a / b

while True:
    print("\nWelcome to Simple Calculator")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Close Calculator")

    try:
        choice = int(input("Enter your choice from 1 to 5: "))
    except ValueError:
        print("Please enter a number from 1 to 5.")
        continue

    if choice == 5:
        print("Goodbye! May we meet again.")
        break

    if choice in [1, 2, 3, 4]:
        try:
            num1 = float(input("Enter your first number: "))
            num2 = float(input("Enter your second number: "))
        except ValueError:
            print("Please enter valid numbers.")
            continue

        if choice == 1:
            print("Result:", add(num1, num2))
        elif choice == 2:
            print("Result:", subs(num1, num2))
        elif choice == 3:
            print("Result:", mul(num1, num2))
        elif choice == 4:
            print("Result:", dev(num1, num2))
    else:
        print("Invalid choice. Please select between 1 and 5.")
