target_string: str = "10.128.0.0/15"

result: list = list(map(int, target_string.rstrip().split("./")))
print(result)
