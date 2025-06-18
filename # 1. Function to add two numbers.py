# 1. Function to add two numbers
def add_numbers(a, b):
    return a + b


# 2. Function to check if a number is even
def is_even(n):
    return n % 2 == 0


# 3. Function to greet a person with a given name
def greet(name):
    return f"Hello, {name}!"


# 4. Function to calculate the factorial of a number (using recursion)
def factorial(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)


# 5. Function to find the maximum value in a list
def max_in_list(numbers):
    if not numbers:
        return None
    max_val = numbers[0]
    for num in numbers:
        if num > max_val:
            max_val = num
    return max_val


# Example usage
print(add_numbers(3, 5))           # Output: 8
print(is_even(10))                 # Output: True
print(greet("Alice"))              # Output: Hello, Alice!
print(factorial(5))                # Output: 120
print(max_in_list([3, 7, 2, 9]))  # Output: 9




#if-else
x = 10

if x > 0:
    print("x is positive")
elif x == 0:
    print("x is zero")
else:
    print("x is negative")


#nested if-else
age = 20

if age >= 18:
    print("You are an adult.")
    if age >= 65:
        print("You are a senior citizen.")
else:
    print("You are a minor.")

#match statement
command = "start"

match command:
    case "start":
        print("Starting the engine...")
    case "stop":
        print("Stopping the engine...")
    case "pause":
        print("Pausing the engine...")
    case _:
        print("Unknown command")