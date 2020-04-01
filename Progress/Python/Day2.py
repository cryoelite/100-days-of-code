# https://www.hackerrank.com/challenges/extra-long-factorials/problem

# def fact(num):
#     if num==1:
#         return 1
#     else:
#         return num*fact(num-1)
# if __name__=='__main__':
#     num=int(input())
#     print(fact(num))

# https://www.hackerrank.com/challenges/append-and-delete/problem?h_r=next-challenge&h_v=zen

if __name__=='__main__':
    str1=list(map(str,input()))
    str2=list(map(str,input()))
    k=int(input())
    s1len=len(str1)
    s2len=len(str2)
    flag=1
    rt=0
    bkk=k
    if(abs(s1len-s2len)>k):
        print("No")
    else:
        l=s2len-s1len
        for i in range(k,0,-1):
            if(s1len>s2len):
                str1.pop()
                s1len-=1
            elif(s1len<s2len):
                    str1.append(str2[-l])
                    s1len+=1
                    l-=1
            else:
                rt+=1
                if(flag==1):
                    j=s1len-1
                    flag+=1
                if(str1[j]!=str2[j]):
                    for m in range(rt):
                        str1.pop()
                        s1len-=1
                        rt-=1
                j-=1
            bkk-=1           
        if(bkk==0 and str1==str2):
            print("Yes")
        else:
            print("No")



                

            
