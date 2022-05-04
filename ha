from pynput import keyboard
import time
import PySimpleGUI as sg
import threading
import pyautogui


left = "a"
right = "d"

def walking():
    while True:
        pyautogui.keyDown(right)
        time.sleep(walk)
        pyautogui.keyUp(right)

        pyautogui.keyDown(left)
        time.sleep(walk)
        pyautogui.keyUp(left)



def on_press(key):
    try:
        if key.char == 'p':
            print("p pressed")
    except:
        print("p not pressed")


#with keyboard.Listener(on_press=on_press) as listener:
    #listener.start()





sg.theme("DarkAmber")

#what is after KEY is variable
layout = [[sg.Text("How long should you hold A/D?(In seconds)")],
          [sg.InputText(key='Walk Time is')],
          [sg.Text("What button should detroy?")],
          [sg.InputText(key='breaking key is')],
          [sg.Submit(), sg.Cancel()]
]

window = sg.Window('Vertical Farm Macro', layout)

#event keeps track of how user itneractrs with window and layout
#Values keeps track of what the user types in
event, values = window.read()

window.close()

sg.popup('You entered', values['Walk Time is'], values['breaking key is'])


print(values)

walk = int(values['Walk Time is'])
breaking = str(values['breaking key is'])





time.sleep(1)
print("starting in 5 seconds")
time.sleep(1)
print("starting in 4 seconds")
time.sleep(1)
print("starting in 3 seconds")
time.sleep(1)
print("starting in 2 seconds")
time.sleep(1)
print("starting in 1 seconds")
time.sleep(1)
print("starting, hope u don't get banned ;)")



class starting:
    with keyboard.Listener(
        on_press = on_press) as Listener:
        Listener.start()

t1 = threading.Thread(target=starting)

t2 = threading.Thread(target=walking)


t2.start()
time.sleep(1)
t1.start()

t2.join()
time.sleep(1)
t1.join()

