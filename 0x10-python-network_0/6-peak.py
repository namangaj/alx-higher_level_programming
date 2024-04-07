def find_peak(list_of_integers):
    if not list_of_integers:
        return None
    
    peaks = []
    n = len(list_of_integers)
    
    # Check if the first element is a peak
    if n == 1 or list_of_integers[0] >= list_of_integers[1]:
        peaks.append(list_of_integers[0])
    
    # Check if the last element is a peak
    if n >= 2 and list_of_integers[n - 1] >= list_of_integers[n - 2]:
        peaks.append(list_of_integers[n - 1])
    
    # Check other elements for peaks
    for i in range(1, n - 1):
        if list_of_integers[i] >= list_of_integers[i - 1] and list_of_integers[i] >= list_of_integers[i + 1]:
            peaks.append(list_of_integers[i])
    
    return peaks
