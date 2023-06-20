target_bin: str = "00100111"
wildcard_mask_bin: str = "00011000"

result_bin_list = []

check_position: list[int] = []

for i in range(len(wildcard_mask_bin)):
    if wildcard_mask_bin[i] == "1":
        check_position.append(i)

print(check_position)

for i in range(8):
    print(i, target_bin[i])
