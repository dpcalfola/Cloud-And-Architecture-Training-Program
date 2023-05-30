target_string: str = "10.128.0.0/15"


def get_integer_values(ip_address: str) -> list[int]:
    # Split the IP address string based on '.'
    dot_parts = ip_address.split('.')

    # Append to result as list[int]
    separated_integers: list[int] = []
    for part in dot_parts:
        # Handling last element that has two integer separating by '/'
        if '/' in part:
            sub_parts = part.split('/')
            for sub_part in sub_parts:
                separated_integers.append(int(sub_part))
        else:
            # Other case, convert to int and append
            separated_integers.append(int(part))

    # Return
    return separated_integers


result: list = get_integer_values(target_string)
print(result)
