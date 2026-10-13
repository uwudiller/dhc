getgenv().farmSettings = {
    -- FPS limit
    ["Fps"] = 10,

    -- Step Teleportation
    ["StepsHorizontal"] = 4,
    ["StepDelay"] = 0.6,
    ["StepsVertical"] = 1,

    -- Webhook
    ["Webhook"] = {
        ["URL"] = "https://discord.com/api/webhooks/1", 
        ["Interval"] = 10  -- in minutes
    },

    -- Server Hop
    ["ServerHop"] = {
        ["Enabled"] = true,
        ["Blacklist"] = {5786123736, 5786123792},
        ["CheckInterval"] = "0h 0m",
        ["MinEarningsThreshold"] = "0k",
        ["HopOnBotDetection"] = true -- или false
    },
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/uwudiller/dhc/refs/heads/main/main.lua"))()
