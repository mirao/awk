# replaces char in string
BEGIN {
    ret = "retez" # string you want to change
    char = "x" # replace by char
    i = 2 # char position

    # 1st way
    print substr(ret, 1, i - 1) char substr(ret, i + 1)
    
    # 2nd way
    a = substr(ret, 1, i)
    sub(/.$/, char, a)
    print a substr(ret, i + 1)

    # 3rd way
    a = substr(ret, i)
    print substr(ret, 1, i - 1) gensub(/./, char, 1, a) 
}