local workspace = game:GetService("Workspace")

local pedra = workspace:WaitForChild("Pedra")

pedra.ClickDetector.MouseClick:Connect(function(jogador)
    local personagem = jogador.Character
    local picareta = personagem:FindFirstChild("Picareta")

    if picareta then
    print(jogador.Name .. " bateu na pedra com a picareta")
    else
        print(jogador.Name .. " não tem picareta equipada")
    end
end)