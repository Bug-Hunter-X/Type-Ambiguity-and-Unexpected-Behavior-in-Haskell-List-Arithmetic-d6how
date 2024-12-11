{-# LANGUAGE FlexibleInstances #-}

instance Eq a => Eq [a] where
  (==) [] [] = True
  (==) (x:xs) (y:ys) = x == y && xs == ys
  (==) _ _ = False

instance (Eq a, Num a) => Num [a] where
  (+) [] ys = ys
  (+) xs [] = xs
  (+) (x:xs) (y:ys) = (x + y) : (xs + ys)
  (*) [] _ = []
  (*) _ [] = []
  (*) (x:xs) (y:ys) = (x * y) : (xs * ys)
  negate xs = map negate xs
  abs xs = map abs xs
  signum [] = []
  signum xs = map signum xs

main :: IO ()
main = do
  print ([1,2,3] + [4,5,6]) -- Output: [5,7,9]
  print ([1,2,3] * [4,5,6]) -- Output: [4,10,18]