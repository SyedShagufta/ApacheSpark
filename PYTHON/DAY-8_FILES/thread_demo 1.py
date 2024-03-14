import threading
import time
class Mythread(threading.Thread):
    def __init__(self,Name):
        threading.Thread.__init__(self)
        print("inside init")
    def run(self):
        threadLock.acquire()
        print("Run method")
        for i in range(1,6):
            time.sleep(0.9)
            print(i)
        
        threadLock.release()
        

threadLock = threading.Lock()
#threads = []
obj=Mythread("Thread1")
obj2=Mythread("Thread2")
obj.start()
obj2.start()