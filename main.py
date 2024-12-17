# main.py
from math_library.basic_math import add, subtract, multiply, divide
from math_library.advanced_math import power, square_root, factorial, logarithm
from math_library.statistical_math import (
    calculate_mean, 
    calculate_median, 
    calculate_mode, 
    calculate_variance
)
def main():
    # Demonstrate basic operations
    print(f"Addition: {add(5, 3)}")
    print(f"Subtraction: {subtract(10, 4)}")
    print(f"Multiplication: {multiply(6, 7)}")
    print(f"Division: {divide(15, 3)}")

    # Demonstrate advanced math
    print(f"Power: {power(2, 3)}")
    print(f"Square Root: {square_root(16)}")
    print(f"Factorial: {factorial(5)}")
    print(f"Logarithm: {logarithm(100)}")

    # Demonstrate statistical operations
    numbers = [1, 2, 3, 4, 5, 5, 6, 7]
    print(f"Mean: {calculate_mean(numbers)}")
    print(f"Median: {calculate_median(numbers)}")
    print(f"Mode: {calculate_mode(numbers)}")
    print(f"Variance: {calculate_variance(numbers)}")

if __name__ == "__main__":
    main()