lowEnergy = exists("1467321494644.png")
missionEnd = 0

def rechargeEnergyIfFree():
    if exists("1467322124639.png", 5):
        click("1467322124639.png")
    if exists("1467322223525.png", 15):
        click("1467322223525.png")
    if exists("1467322499864.png", 15):
        click("1467322499864.png")
    if exists("1467323163474.png", 10):
        click("1467323163474.png")
        sleep(3)
        type(Key.ESC)

while not lowEnergy:
    exists("1467144561903.png", 15)
    click("1467144561903.png")
    if exists("1467321494644.png", 5):
        #Break out of loop due to low energy
        break
    while missionEnd <= 26:
        if exists("1467144845807.png", 10):         
            #Check for Shield Lvl prompt
            #TODO: Create a prompt check function
            if exists("1467154405580.png", 5):
                click("1467154405580.png")
            #Check for Dimension Rift prompt
            if exists("1467167042471.png", 5):
                click("1467167042471.png")
            #Check for Hero Found prompt
            if exists("1467167042471.png", 5):
                click("1467167042471.png")
           #Check for Hero Level Prompt 
            if exists("1467154405580.png", 5):
                click("1467154405580.png")
        if exists("1467144845807.png", 5):
            break
    missionEnd+=1
    click("1467144845807.png")
    if exists("1467154405580.png", 15):
        click("1467154405580.png")
x+=1

rechargeEnergyIfFree()
