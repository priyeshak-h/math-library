# advanced_math.py
import math

def power(base, exponent):
    """Exponentiation"""
    return base ** exponent

def square_root(number):
    """Square root calculation"""
    if number < 0:
        raise ValueError("Cannot calculate square root of negative number")
    return math.sqrt(number)

def factorial(n):
    """Factorial calculation"""
    if n < 0:
        raise ValueError("Factorial is not defined for negative numbers")
    return math.factorial(n)

def logarithm(number, base=10):
    """Logarithm calculation"""
    if number <= 0:
        raise ValueError("Logarithm is not defined for non-positive numbers")
    return math.log(number, base)