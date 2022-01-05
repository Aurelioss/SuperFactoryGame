--Game: Upgrade machines of your factory in order to grow up

require("Machines")
require("Text")
require("Func")

-- Variables

Cont = true
NbTurn = 0

Submenu = {
    [1] = Func_List()
}

-- End Variables



-- Game start

-- show welcome message + get player's name

print(Txt_WELCOME)

 Ru = Func_GetFactoryName()

-- End game start

-- Game loop

while (Cont) do
    print("Turn number", NbTurn, " Golds :", M_Factory.golds, "Machines :", #M_Factory.machines, "/", M_Factory.maxMachines, "\n")

    local choosingSubmenu = Func_GetChoosedFromMain()

    print(Submenu[choosingSubmenu])

    NbTurn = NbTurn + 1

-- To stop the game EPHEMER
    if NbTurn == 5 then
        Cont = false
    end
end
