"""
Sample tests
"""
from django.test import SimpleTestCase
from app import calc

class CalcTests(SimpleTestCase):
    """Test the Calc module."""

    def test_add_numbers(self):
        """Test that adding two numbers returns the correct result."""
        res = calc.add(5, 6)
        self.assertEqual(res, 11)

    def test_subtract_numbers(self):
        """Testing subtracting numbers."""
        res = calc.subtract(10, 15)

        self.assertEqual(res, 5)
