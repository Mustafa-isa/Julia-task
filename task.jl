function binary_search(arr, target)
    low = 1
    high = length(arr)
    
    while low <= high
        mid = (low + high) ÷ 2
        
        if arr[mid] == target
            return true
        elseif arr[mid] < target
            low = mid + 1
        else
            high = mid - 1
        end
    end
    
    return false
end


arr = [1, 3, 4, 5, 8, 10, 15, 18, 20]
target = 5
found = binary_search(arr, target)
if found
    println("Element $target found in the array")
else
    println("Element $target not found in the array")
end
