def find_peak(list_of_integers):
    if not list_of_integers:
        return None
    
    peaks = []
    
    # Check if the first element is a peak
    if len(list_of_integers) >= 1 and list_of_integers[0] >= list_of_integers[1]:
        peaks.append(list_of_integers[0])
    
    # Check if the last element is a peak
    if len(list_of_integers) >= 2 and list_of_integers[-1] >= list_of_integers[-2]:
        peaks.append(list_of_integers[-1])
    
    # Iterate through the list and check for peaks
    for i in range(1, len(list_of_integers) - 1):
        if list_of_integers[i] >= list_of_integers[i - 1] and list_of_integers[i] >= list_of_integers[i + 1]:
            peaks.append(list_of_integers[i])
    
    return peaks
