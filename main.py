from tkinter import *
import random

def run():
    end1 = entry.get().replace('r', 'w').replace('n', 'ny').replace('l', 'll').replace('o', 'aw')
    end = end1 + "    " + random.choice(["（*＾ワ＾*）", "(*＾წ＾*)", "(*꧆▽꧆*)", "(๑꧆◡꧆๑)", "（*＾＾*)", "ヾ(＠^∇^＠)ノ", "o((*^▽^*))o", "ヾ(＠⌒ー⌒＠)ノ", "(＝⌒▽⌒＝)", "(≡^∇^≡)", "o(〃＾▽＾〃)o", "(。・ω・。)", "ヾ(＾-＾)ノ", "(❁´◡`❁)", "˙˚ʚ(´◡`)ɞ˚˙"])
    pressed = Label(text=end, height=10)
    pressed.place(x=0, y=200)


w = Tk()

# Basics
w.title("F--ing furries")
w.geometry("750x500")
head = Label(text="Turn any string into a furry shitpost")
head.place(x= 0, y= 0)

entry = Entry(w)
entry.place(x= 100, y=100, width=500)
button = Button(text="Turn below into furry text", bg="green", fg="white", command = run)
button.place(x= 100, y= 70)

# Start loop
w.mainloop()
