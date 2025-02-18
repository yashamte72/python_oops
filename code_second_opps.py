#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      Yash Amte
#
# Created:     19-02-2025
# Copyright:   (c) Yash Amte 2025
# Licence:     <your licence>
#-------------------------------------------------------------------------------

class Account:
    banK_name = "jio bank"

    def __init__(self, balance, account):
        self.bal = balance
        self.acc = account
        print("account detail fetch")

    def debit(self, amount):
        self.bal-=amount
        print("Rs :", amount,"was debited")
        print("total balance ", self.get_bal())


    def credit(self, amount):
        self.bal+= amount
        print("Rs :", amount, "was credited" )
        print("total balance ", self.get_bal())


    def get_bal(self):
        return self.bal


A1=Account(1000,"A1010101")
A1.debit(1000)
A1.credit(50000)
A1.debit(30000)
A1.debit(4000)