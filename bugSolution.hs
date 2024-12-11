{-# LANGUAGE FlexibleInstances #-}

instance Eq a => Eq [a] where
  (==) [] [] = True
  (==) (x:xs) (y:ys) = x == y && xs == ys
  (==) _ _ = False

-- Avoid defining Num for lists due to ambiguity and complexities.
--Instead, use functions for specific list operations

listAdd :: (Num a) => [a] -> [a] -> [a]
listAdd [] ys = ys
listAdd xs [] = xs
listAdd (x:xs) (y:ys) = (x + y) : (listAdd xs ys)

listMultiply :: (Num a) => [a] -> [a] -> [a]
listMultiply xs ys = undefined --Or implement a specific type of list multiplication if required, rather than a general Num instance.

main :: IO ()
main = do
  print (listAdd [1,2,3] [4,5,6]) -- Output: [5,7,9]
  --print (listMultiply [1,2,3] [4,5,6]) -- This now correctly shows an error, indicating the appropriate solution
  print (map (*) [1,2,3] [4,5,6]) -- If element-wise multiplication is required