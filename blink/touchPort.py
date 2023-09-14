import serial as Serial
from time import sleep

def TouchSerialPort(port, baudrate):
    # port = env.subst(port)
    print("Forcing reset using %dbps open/close on port %s" % (baudrate, port))
    try:
        s = Serial(port=port, baudrate=baudrate)
        s.setDTR(False)
        s.close()
    except:  # pylint: disable=bare-except
        pass
    #sleep(0.5)  # DO NOT REMOVE THAT (required by SAM-BA based boards)

TouchSerialPort("COM7",1200)