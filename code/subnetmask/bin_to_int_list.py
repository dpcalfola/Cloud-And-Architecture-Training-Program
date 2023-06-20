target_bin_list_3: list = [10100, 10101, 11100, 11101]
target_bin_list: list = [0, 100, 1000, 1100, 100000, 100100, 101000, 101100]

result_bin_list: list = []

for bin_value in target_bin_list:
    inverted_value = int(str(bin_value), 2)
    result_bin_list.append(inverted_value)

print(result_bin_list)
