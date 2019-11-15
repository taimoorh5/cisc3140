-- Haskell
-- Haskell is a non-OOP language because it doesn't have any of the characteristics (polymorphism, encapsulation, inheritance) of an OOP language. 

-- main
main = do
    print(isPalindrome [3,1,3])
    print(merge [0,2,4,6,8] [1,3,5,7,9])

-- palindrome function - checks if a list is a palindrome
-- list is taken as a parameter
isPalindrome p = p == reverse p

-- merge functions - merges two sorted lists into one sorted lists
-- two lists are taken as parameter
-- puts the elements of each list into one list and merges the lists when in order by value
merge :: Ord m => [m] -> [m] -> [m]
merge (a:a1) (b:b1) = if a < b
                        then a:(merge a1 (b:b1))
                        else b:(merge (a:a1) b1)
merge [] a1 = a1
merge a1 [] = a1


-- output:
-- true
-- [0,1,2,3,4,5,6,7,8,9]