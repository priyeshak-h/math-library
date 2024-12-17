# statistical_math.py
import statistics

def calculate_mean(numbers):
    """Calculate arithmetic mean"""
    return statistics.mean(numbers)

def calculate_median(numbers):
    """Calculate median"""
    return statistics.median(numbers)

def calculate_mode(numbers):
    """Calculate mode"""
    try:
        # Use mode_result to capture the result first
        mode_result = statistics.mode(numbers)
        
        # Count how many times this mode appears
        mode_count = numbers.count(mode_result)
        
        # Check if the mode appears more than once
        if numbers.count(mode_result) <= 1:
            return "No unique mode found"
        
        return mode_result
    except statistics.StatisticsError:
        return "No unique mode found"

def calculate_variance(numbers):
    """Calculate variance"""
    return statistics.variance(numbers)