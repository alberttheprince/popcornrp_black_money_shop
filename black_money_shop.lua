local blackMoneyShop = {
    ["panties"] = 250,
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
