function GetFactoryName()

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