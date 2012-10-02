module Main where

import Test.QuickCheck
import Arb.UnittestProto

main =  do
  --cs
  runtest $ tests_TestAllExtensions
  runtest $ tests_TestAllTypes
  runtest $ tests_Forwards32
  runtest $ tests_ForwardsFixed32
  runtest $ tests_ForwardsUnsigned32
  runtest $ tests_ForwardsSFixed32
  runtest $ tests_ForwardsFloat
  runtest $ tests_ForwardsDouble
  runtest $ tests_ForwardsBool
  runtest $ tests_ForwardsString
  runtest $ tests_ForwardsBytes

runtest :: (Show a, Arbitrary a) => [(String, a -> Bool)] -> IO ()
runtest = mapM_ (\(name,test) -> putStrLn name >> quickCheck test)
