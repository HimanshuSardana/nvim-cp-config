a = [1,2,3,4,5,6,7,8,9]
l = 0
r = len(a) - 1

elem = 3
idx = 0
while(l < r):
    mid = (l + r) // 2
    if a[mid] == elem:
        idx = mid
        break
    elif a[mid] < elem:
        l = mid + 1
    else:
        r = mid - 1
print(idx)
