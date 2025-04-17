# Simple To-Do List App

todo_list = []

def show_menu():
    print("\nTo-Do List Menu:")
    print("1. Show tasks")
    print("2. Add task")
    print("3. Remove task")
    print("4. Exit")

def show_tasks():
    if not todo_list:
        print("Your to-do list is empty.")
    else:
        print("\nYour Tasks:")
        for i, task in enumerate(todo_list, start=1):
            print(f"{i}. {task}")

def add_task():
    task = input("Enter the task: ")
    todo_list.append(task)
    print(f'"{task}" has been added to your to-do list.')

def remove_task():
    show_tasks()
    if not todo_list:
        return
    try:
        task_number = int(input("Enter the number of the task to remove: "))
        removed = todo_list.pop(task_number - 1)
        print(f'"{removed}" has been removed from your to-do list.')
    except (ValueError, IndexError):
        print("Invalid task number.")

# Main program loop
while True:
    show_menu()
    choice = input("Choose an option (1-4): ")

    if choice == '1':
        show_tasks()
    elif choice == '2':
        add_task()
    elif choice == '3':
        remove_task()
    elif choice == '4':
        print("Goodbye! 👋")
        break
    else:
        print("Invalid choice. Please enter a number between 1 and 4.")
