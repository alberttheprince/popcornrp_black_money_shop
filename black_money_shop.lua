local blackMoneyShop = {
    ["panties"] = 250,
    ["goldchain"] = 1250,
    ["minigoldbar"] = 7500,
    ["diamond_ring"] = 5000,
    ["rolex"] = 4250,
    ["10kgoldchain"] = 2500,
    ["tablet"] = 500,
    ["iphone"] = 600,
    ["samsungphone"] = 600,
    ["laptop"] = 750,
    ["diamond"] = 1250,
    ["emerald"] = 1000,
    ["dendrogyra_coral"] = 2750,
    ["antipatharia_coral"] = 2550,
    ["stolenmicro"] = 250,
    ["stolencoffee"] = 150,
    ["stolentv"] = 750,
    ["stolenscope"] = 250,
    ["stolenart"] = 450,
    ["stolenlaptop"] = 500,
}

local hookId = exports.ox_inventory:registerHook('buyItem', function(payload)
        if blackMoneyShop[payload.currency] then
            SetTimeout(100, function()
                exports.ox_inventory:RemoveItem(payload.source, payload.currency, payload.totalPrice)
                exports.ox_inventory:AddItem(payload.source, "black_money", blackMoneyShop[payload.currency])
            end)
            return false
        end
    end,
    {
        print = true,
        itemFilter = {
            black_money = true
        },
    })
