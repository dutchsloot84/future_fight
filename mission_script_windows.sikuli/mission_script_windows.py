x = 0
# need screen for low energy, lowEnergy = find(???)
missionEnd = 0
while x <= 35:
    exists("1467144561903.png", 15)
    click("1467144561903.png")
    while missionEnd <= 26:
        sleep(10)
        if exists("1467144845807.png", 10):         
            #Check for Shield Lvl prompt
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
    
