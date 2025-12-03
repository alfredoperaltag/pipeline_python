def add(a, b):
    """Suma dos números"""
    return a + b


def subtract(a, b):
    """Resta dos números"""
    return a - b


def multiply(a, b):
    """Multiplica dos números"""
    return a * b


def divide(a, b):
    """Divide dos números, lanza error si b=0"""
    if b == 0:
        raise ValueError("No se puede dividir entre cero")
    return a / b


if __name__ == "__main__":
    print("2 + 3 =", add(2, 3))
    print("5 - 2 =", subtract(5, 2))
    print("4 * 3 =", multiply(4, 3))
    print("10 / 2 =", divide(10, 2))
    