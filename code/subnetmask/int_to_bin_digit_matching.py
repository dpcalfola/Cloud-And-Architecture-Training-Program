def int_to_binary(integer):
    binary = bin(integer)[2:]  # Convert integer to binary string, remove '0b' prefix
    binary = binary.zfill(8)  # Pad the binary string with leading zeros to make it 8 digits
    return binary


# Example usage
number: int = 2
binary_number = int_to_binary(number)
print(binary_number)
