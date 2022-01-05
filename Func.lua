function Func_List()

    print("Here is the list of your machines")

    
end

function Func_GetFactoryName()

    local nameInput = ""
    local cont = true
    local sure = ""

    while (cont) do
        
        print("Please, give a name to your factory\n")

        nameInput = tostring(io.read())

        print("You choosed ", nameInput, ", are you sure ? Y/N")

        sure = tostring(io.read())

        if sure == "Y" then
            cont = false
        else 
            cont = true
        end
    end
    print("Your factory name is", nameInput)

    return nameInput
end

--return int, the choice of the player in mainmenu
function Func_GetChoosedFromMain()

    print(Txt_MAINMENU)

    MainMenuInput = tonumber(io.read())

    return MainMenuInput
end