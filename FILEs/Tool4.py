#!/usr/bin/python
# -*- coding: UTF-8 -*-

from os import system, name
import itertools
import threading
import time
import sys
import datetime
from base64 import b64decode,b64encode
from datetime import date

expirydate = datetime.date(2023, 1, 30)
#expirydate = datetime.date(2023, 1, 30)
today=date.today()
def hero():

    def chalo():
        done = False
        #here is the animation
        def animate():
            for c in itertools.cycle(['█████', '████████', '█████', '███████']) :
                if done:
                    break
                sys.stdout.write('\rHacking in the Bcone server for next colour ' + c)
                sys.stdout.flush()
                time.sleep(3.5)

        t = threading.Thread(target=animate)
        t.start()

        #long process here
        time.sleep(4.0)
        done = True

    def chalo1():
        done = False
        #here is the animation
        def animate():
            for c in itertools.cycle(['█████', '████████', '█████', '███████']) :
                if done:
                    break
                sys.stdout.write('\rFixxing the colour wait ' + c)
                sys.stdout.flush()
                time.sleep(3.5)
            sys.stdout.write('\rDone!     ')

        t = threading.Thread(target=animate)
        t.start()

        #long process here
        time.sleep(4.0)
        done = True

    def clear():
        # for windows
        if name == 'nt':
            _ = system('cls')
        # for mac and linux(here, os.name is 'posix')
        else:
            _ = system('clear')

    clear()
    y=1
    newperiod=period
    banner='bash Logo.sh'
    thisway=[0,2,4,6,8,]
    thatway=[1,3,5,7,9,]
    numbers=[]
    i=1
    while(y):
        clear()
        system(banner)
        print("Enter ",newperiod,"Emerd Price :")
        current=input()
        current=int(current)
        chalo()
        print("\n---------Successfully hacked the server-----------")
        chalo1()
        print("\n---------Successfully got the colour -------------")
        print('\n')
        def getSum(n):
            sum=0
            for digit in str(n):
                sum += int(digit)
            return sum
        if i in thisway:
            m=getSum(current)
            n=int(current)%10
            if((m%2==0 and n%2==0) or (m%2==1 and n%2==1)):
                if current in numbers:
                    print(newperiod+1," : 💥🔥💥🔴RED🔴💥🔥💥")
                else:
                    print(newperiod+1," : 💥🔥💥🟢GREEN🟢💥🔥💥")
            else:
                if current in numbers:
                    print(newperiod+1," : 💥🔥💥🟢GREEN🟢💥🔥💥")
                else:
                    print(newperiod+1," : 💥🔥💥🔴RED🔴💥🔥💥")
        if i in thatway:
            m=getSum(current)+1
            n=int(current)%10
            if((m%2==0 and n%2==0) or (m%2==1 and n%2==1)):
                if current in numbers:
                    print(newperiod+1,": 💥🔥💥🟢GREEN🟢💥🔥💥")
                else:
                    print(newperiod+1,": 💥🔥💥🔴RED🔴💥🔥💥")
            else:
                if current in numbers:
                    print(newperiod+1,": 💥🔥💥🔴RED🔴💥🔥💥")
                else:
                    print(newperiod+1,": 💥🔥💥🟢GREEN🟢💥🔥💥")
        i=i+1
        newperiod+=1
        numbers.append(current)
        y=input("Do you want to play : Press 1 and 0 to exit \n")
        if(y==0):
            y=False
        if (len(numbers)>11):
            clear()
            system('figlet Thank you!!')
            print("Play on next specified time!!")
            print("-----------Current Time UP----------")
            sys.exit(" \n \n \n Contact on Telegram @IDFCMONEY")
            #print(numbers)
  



if(expirydate>today):
    now = datetime.datetime.now()
    First = now.replace(hour=13, minute=55, second=0, microsecond=0)
    Firstend = now.replace(hour=14, minute=35, second=0, microsecond=0)
    Second = now.replace(hour=15, minute=55, second=0, microsecond=0)
    Secondend = now.replace(hour=16, minute=35, second=0, microsecond=0)
    Third = now.replace(hour=16, minute=55, second=0, microsecond=0)
    Thirdend = now.replace(hour=17, minute=35, second=0, microsecond=0)
    Final = now.replace(hour=17, minute=55, second=0, microsecond=0)
    Finalend = now.replace(hour=18, minute=35, second=0, microsecond=0)

    if (False):
            period=218
            hero()
    elif(now>First and now<Firstend):
            period=218
            hero()
    elif(False):
            period=218
            hero()
    elif(True):
            period=238
            hero()
    else:
        banner='bash Logo.sh'
        print("Hi!! Thanks for buying the hack")
        print("----------Your play time----------")
        print("5 Sept 2021, 11:00 AM- 11:30 AM")
        print("5 Sept 2021, 02:00 PM- 02:30 PM")
        print("5 Sept 2021, 05:42 PM- 08:AM PM")
        #print("5 Sept 2021, 06:37 PM- 08:30 AM")
        print("Please play on the given time, and ")
        print("If you think it is an error contact")
        print(" admin on telegram  ")
        (" @IDFCMONEY ")

else:
    banner='bash Logo.sh'
    system(banner)
    print("*---------*----------*-------------*----------*")
    print("Your hack has expired--- Please contact")
    print(" on telegram ----@IDFCMONEY for activating")
