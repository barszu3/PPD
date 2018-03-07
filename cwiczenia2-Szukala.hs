--Zadanie1
--a)
fl list x = x:list
--b)
fl2 list x = head list : x : tail list
--c)
fl3 list x = list ++ [x]

--Zadanie2
--a)
second list = head(tail list)
--b)
third list = head(drop 2 list)
--c)
ccc list = list !! (length list-2)

--Zadanie 3
odwroc :: [a] -> [a]
odwroc [] = []
odwroc (h:t) = (odwroc t)++[h]

--Zadanie 4
odwroc_ostatni list = last list:(init(tail list)) ++ [head list] 

--Zadanie 5
--a)
dodpar:: Integer -> Bool
dodpar a | (mod a 2 ==0)&&(a > 0) = True
         | otherwise = False

dodatnie list = length (filter (dodpar) list)   
--b)
ile3 n = if n < 1 then error "n musi byc wieksze lub rowne 1"
                           else length [y | y <- [1..n], mod y 3 == 0]  
--c)
suma3 n = if n < 1 then error "n>=1"
                           else sum [y | y <- [1..n], mod y 3 == 0] 
--Zadanie 6
parzyste list | (length list) `mod` 2 ==0 = True
          | otherwise = False   
--Zadanie 7
--a)
kwadrat x = map (^2) x  
--b)
kwadrat2 x = [y^2 | y <- x]
--Zadanie 8
count list a = length (filter(==a) list)
--Zadanie 9
duplicate a n = replicate n a
--Zadanie 10
palindrom x = (x == odwroc x)
--Zadanie 11
usun _ [] = []
usun x (h:t) = if x == h then t
                         else h : (usun x t)
--Zadanie 12
usun2 _ []     = []
usun2 i (a:as)
   | i == 0    = as
   | otherwise = a : usun2 (i-1) as
--Zadanie 13
checklist [] _ = True
checklist (h:t) x = if (elem h x) then checklist t x
                                         else False
--Zadanie 14
krot list = map (\(n,nx)->(nx, n)) list
    