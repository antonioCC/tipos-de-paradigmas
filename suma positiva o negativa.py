"""EL programa pide dos numeros y los sumas despues indicara si la suma es negativa o positiva o igual al cero """

a = int(input("Dame un número\n"))
b = int(input("Dame otro numero\n"))

if (a+b) >0:
    print("La suma es positiva")
elif (a+b) == 0:
    print("La suma da como resulado 0")
else:
    print("La suma es negativa")