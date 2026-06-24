local Players = game:GetService("Players")

local workspace = game:GetService("Workspace")

Players.PlayerAdded:Connect(function(jogador)
    jogador.CharacterAdded:Connect(function(personagem)
        local picareta = personagem:WaitForChild("Picareta")

        picareta.Activated:Connect(function()
            local raycastParams = RaycastParams.new()
            raycastParams.FilterDescendantsInstances = {personagem}
            raycastParams.FilterType = Enum.RaycastFilterType.Exclude
            
            local origem = personagem.HumanoidRootPart.Position
            local direcao = personagem.HumanoidRootPart.CFrame.LookVector * 5

            local resultado = workspace:Raycast(origem, direcao, raycastParams)

            if resultado and resultado.Instance.Name == "Pedra" then
                print("bateu na pedra")
            else
                print("nada na frente")
            end
        end)
        
    end)
end)

