# basic_math.py
def add(a, b):
    """Basic addition"""
    return a + b

def subtract(a, b):
    """Basic subtraction"""
    return a - b

def multiply(a, b):
    """Basic multiplication"""
    return a * b

def divide(a, b):
    """Basic division with error handling"""
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b