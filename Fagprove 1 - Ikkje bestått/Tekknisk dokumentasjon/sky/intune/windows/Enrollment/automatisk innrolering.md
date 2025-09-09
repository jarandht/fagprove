## Automatisk innriler nye devicar til deployment profile


Groups > New group 

Security

Membership type: Dynamic device

Members

    Dynamic membership rules

    - (device.devicePhysicalIDs -any _ -contains "[ZTDId]")


Velg denne gruppa for deployment profilen