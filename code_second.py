uim amma#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Yash Amte
#
# Created:     19-02-2025
# Copyright:   (c) Yash Amte 2025
# Licence:     <your licence>
#-------------------------------------------------------------------------------


class Student:
    college_name= "pratibha college"

    def __init__(self,fullname,maths,chemistry,physics):
        self.name= fullname
        self.maths= maths
        self.chemistry=chemistry
        self.physics=physics

        print("marks of student in the class")

    def average(self):
        print("Student Marks," , self.name ,self.maths, self.chemistry,self.physics)
        print("average marks of Student, ", self.name, (self.maths+self.chemistry+self.physics)/3)



s1=Student("Yash",99,92,93)


s2=Student("Vikas",69,45,76)


s3=Student("Akash",95,83,88)

s1.average()
s3.average()
s2.average()
