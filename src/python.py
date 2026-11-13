def add (a,b):
    result = a+b
    return result
def test_add ():
    assert add (2,3) == 5
    assert add (5,5) == 10
    assert add (10,20) == 30
    