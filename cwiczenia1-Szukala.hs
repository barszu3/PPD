--Bartosz Szukała s421813

--a)
first x | x > 2 = x^2 |  0<x && x<=2 = x-1 | x<=0 = abs(x)

--b)
nwd a b | b==0 = a | otherwise = nwd b (a `mod` b)

--c)
nww a b = div (a*b) (nwd a b)

--d)
trojkat a b c | a >= (b + c) = False
              | b >= (a + c) = False
              | c >= (a + b) = False
              | otherwise = True

--e)
stozek r h =  let s = pi * r^2
        in 1/3 * s * h 
		
--f)
tworzaca r h = sqrt (h^2 + r^2)

--g)
potega a n = if n == 0 then 1
                         else a * potega a (n - 1)	
--h)
potega2 a 0 = 1
potega2 a n = a* potega a (n-1)

--i)
fib n = if n == 0 then 0 else if n == 1 then 1 else fib(n-1)+fib(n-2)
fib10 n | n == fib 10 = True | otherwise = False	

--j)
fib2 n = fib2POM n 1
fib2POM n k | n == fib k = True | n > fib k = fib2POM n (k+1) | otherwise = False					 