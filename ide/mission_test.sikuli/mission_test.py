x = 0
find("missionButton.png")
doubleClick("missionButton.png")
find(Pattern("1467059160257.png").similar(0.90))
click(Pattern("1467059160257.png").similar(0.90))
while x <= 5:
    find("1467064458819.png")
    click("1467064458819.png")
    sleep(90)
    if exists("1467064324513.png"):
        click("1467064324513.png")
    if exists("1467064382350.png"):
        click("1467064382350.png")
    x+=1