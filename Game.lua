--Game: Upgrade machines of your factory in order to grow up

require("Machines")
require("Text")
require("Utils")

-- Variables

Cont = true
NbTurn = 0

-- End Variables

-- Game start

-- show welcome message + get player's name

print(Txt_WELCOME)

U_GetFactoryName()

-- End game start

-- Game loop

while (Cont) do
    print("Turn number", NbTurn, " Golds :", M_Factory.golds, "Machines :", #M_Factory.machines, "/", M_Factory.maxMachines, "\n")

    local choosingSubmenu = U_GetChoosedFromMain()

   print(U_Submenu[choosingSubmenu])

    NbTurn = NbTurn + 1

-- To stop the game EPHEMER
    if NbTurn == 5 then
        Cont = false
    end
end
