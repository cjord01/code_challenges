# prints out numbers from 1 to 100 under the following conditions: Multiples of three, (3, 6, 9, 12, etc.) must be replaced by the word Fizz in the printout, multiples of five, (5, 10, 15, 25, etc.) must be replaced by Buzz, and multiples of both three and five (15, 30, 45, etc.) must be replaced by FizzBuzz.

def fizz_buzz():
    for number in range(1, 101):
        if (number % 3 == 0 and number % 5 == 0):
            print('FizzBuzz')
        elif (number % 3 == 0):
            print('Fizz')
        elif (number % 5 == 0):
            print('Buzz')
        else:
            print(number)
        
fizz_buzz()