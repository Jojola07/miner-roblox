local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local pedra = workspace:WaitForChild("Pedra")

local hits = 0

Players.PlayerAdded:Connect(function(jogador)
    jogador.CharacterAdded:Connect(function(personagem)
        local picareta = personagem:WaitForChild("Picareta")

        picareta.Activated:Connect(function()
            hits = hits + 1
            print("Hit " .. hits)

            if hits >= 2 then
                pedra:Destroy()
            end
        end)
    end)
end)