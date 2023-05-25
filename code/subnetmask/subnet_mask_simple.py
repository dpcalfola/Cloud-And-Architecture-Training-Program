ip_address = [205, 81, 10, 0, 24]

# Start
host_bit: int = 5

# Number of bit
network_bit = 8 - host_bit
print(f"Network bit is {network_bit}")
print(f"Host bit is {host_bit}")
print()

# Subnet mask
last_subnet_mask_number: int = 256 - pow(2, host_bit)
print(f"Subnet mask is 255.255.255.{last_subnet_mask_number}")

# Number of subnet
num_of_network = pow(2, network_bit)
print(f"Number of subnet is {num_of_network}")


# Representative address
# def get_representative_address:
#     network_bit_binary: str = "0" * network_bit
