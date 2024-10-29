#!/usr/bin/env python3

from datetime import date as D

n_days = (D(2025, 2, 1) - D.today()).days
n_weeks = n_days // 7
rem_days = n_days % 7

dday = "GATE D-" + str(n_days)
if n_weeks == 0:
    txt = ""
elif rem_days == 0:
    txt = "" + str(n_weeks) + " weeks"
else:
    txt = "" + str(n_weeks) + " weeks and " +\
            str(rem_days) + " days"
print(dday+" \n"+txt)
