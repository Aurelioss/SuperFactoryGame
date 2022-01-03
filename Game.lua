--Game: Une entreprise faut améliorer ses machines pour qu'elle devienne plus grosse

require("Machines")
require("Text")
require("Func")

print(Txt_WELCOME)

M_Factory.name = GetFactoryName()

Cont = true
NbTurn = 0

while (Cont) do
    print("Turn number", NbTurn, " Golds :", M_Factory.golds, "Machines :", #M_Factory.machines, "/", M_Factory.maxMachines, "\n")
    print(Txt_MAINMENU)


    NbTurn = NbTurn + 1

-- To stop the game EPHEMER
    if NbTurn == 5 then
        Cont = false
    end
end
