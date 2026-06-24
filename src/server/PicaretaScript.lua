local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(jogador)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = jogador

    local moedas = Instance.new("IntValue")
    moedas.Name = "Moedas"
    moedas.Value = 0
    moedas.Parent = leaderstats
end)