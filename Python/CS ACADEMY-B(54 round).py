def parser():
    while 1:
        data = list(input().split(' '))
        for number in data:
            if len(number) > 0:
                yield(number)   

input_parser = parser()

def get_word():
    global input_parser
    return next(input_parser)

def get_number():
    data = get_word()
    try:
        return int(data)
    except ValueError:
        return float(data)

n = get_number()
words = []
starts_with = [0 for i in range(26)]

def can_be_acronym(word):
    global starts_with
    num = [0 for i in range(26)]
    for w in word:
        num[ord(w) - ord('a')] += 1
    
    ok = True
    for i in range(26):
        ok &= (num[i] <= starts_with[i])
        
    x = ord(word[0]) - ord('a')
    ok &= num[x] < starts_with[x]
    return ok

for i in range(n):
    w = get_word()
    words.append(w)
    starts_with[ord(w[0]) - ord('a')] += 1
    
result = 0
for w in words:
    result += can_be_acronym(w)
    
print(result)
