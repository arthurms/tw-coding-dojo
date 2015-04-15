import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import FizzBuzz

main :: IO()
main = hspec $ do
  describe "fizzBuzzer" $ do

    context "when is not divisible by 3 or 5" $ do
      it "returns the number" $ do
        fizzBuzzer 1 `shouldBe` "1"

    context "when is divisible by 3" $ do
      it "returns Fizz" $ do 
        fizzBuzzer 3 `shouldBe` "Fizz"

    context "when is divisible by 5" $ do
      it "returns Buzz" $ do
        fizzBuzzer 5 `shouldBe` "Buzz"

    context "when is divisible by both" $ do
      it "returns FizzBuzz" $ do
        fizzBuzzer 15 `shouldBe`"FizzBuzz"