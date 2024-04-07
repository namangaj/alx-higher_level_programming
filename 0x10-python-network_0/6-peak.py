def find_peak(list_of_integers):
    """
    Finds a peak in a list of unsorted integers.
    
    Args:
        list_of_integers (list): List of unsorted integers.
        
    Returns:
        int: The peak element in the list.
    """
    # Handle edge cases where list is empty or has only one element
    if not list_of_integers:
        return None
    if len(list_of_integers) == 1:
        return list_of_integers[0]
    
    # Perform binary search to find a peak element
    left = 0
    right = len(list_of_integers) - 1
    
    while left < right:
        mid = (left + right) // 2
        if list_of_integers[mid] < list_of_integers[mid + 1]:
            left = mid + 1
        else:
            right = mid
    
    return list_of_integers[left]
