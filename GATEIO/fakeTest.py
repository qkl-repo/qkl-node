from faker import Faker
fake = Faker("zh_CN")

print("name",fake.name());
print("address",fake.address());
print("job",fake.job());
print("company",fake.company());
print("phone_number",fake.phone_number());



## 参考: https://www.cnblogs.com/JYB2021/p/14913000.html
