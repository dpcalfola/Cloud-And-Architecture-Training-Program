class IpAddress:
    target_subnet: int
    target_host: int

    subnet_mask: str
    num_of_available_ip: int
    subnet_list: list[dict]

    def __init__(self, cidr_address):
        self.cidr_address: str = cidr_address
        self.target_host: int = -1
        self.subnet_mask: str = "?"
        self.num_of_available_ip: int = -1
        self.subnet_list: list[dict] = []
        self.cidr_data: list[int] = []

    def get_cidr_data(self):
        temp: str = ""
        for c in self.cidr_address:
            print(c)
            if c == "." or c == "/":
                self.cidr_data.append(int(temp))
                temp = ""
            else:
                temp += c

        print(self.cidr_data)

    def test(self):
        if self.target_host != -1:
            print(self.target_host)
        else:
            print("No target_host")


test_ip = IpAddress(cidr_address="205.81.10.0/24")
test_ip.test()
test_ip.get_cidr_data()
