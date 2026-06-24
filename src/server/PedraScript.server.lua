local workspace = game:GetService("Workspace")

local pedra = workspace:WaitForChild("Pedra")

pedra.ClickDetector.MouseClick:Connect(function(jogador)
    print(jogador.Name .. " bateu na pedra")
end)