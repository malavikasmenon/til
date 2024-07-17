# Unit Testing

- Test-driven development: writing tests before you write code. This has several benefits
  - Allows you to define requirements of code accurately
  - Easy while refactoring, and in team collaboration settings
  - No need to overcode, as long as all test cases pass, you're good to go 
- ideally test cases should be automated, work without human intervention for inputs or interpreting the results to see what failed
- tests should run in isolation from one another
- python framework for writing unit tests - unittest module
- To define unit-tests in python
```
# defined in test.py
class ATestCase(unittest.TestCase):
  def test_for_something(self):
    # start method name with "test_"
    pass

if __name__ == '__main__':
  unittest.main()

# to run above testcase
python test.py

# Above would display pass/fail/error
```
- Make use of assertEqual, assertRaises etc in unittest module while writing test methods


