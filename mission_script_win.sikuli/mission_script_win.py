x = 0
missionEnd = 0
while x <= 10:
    find("1467144561903.png")
    click("1467144561903.png")
    while missionEnd <= 20:
        sleep(10)
        if exists("1467144845807.png"):
            sleep(3)
        if exists("1467144909668.png"):
            click("1467144909668.png")
            sleep(3)
        if exists("1467144909668.png"):
            click("1467144909668.png")
            sleep(3)
        if exists("1467144845807.png"):
            sleep(3)
            break
    missionEnd+=1
    click("1467144845807.png")
    sleep(10)
x+=1
    
    