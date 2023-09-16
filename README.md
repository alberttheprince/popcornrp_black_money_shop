# ox_blackmoney_shop
![image](https://github.com/alberttheprince/ox_blackmoney_shop/assets/85725579/189b6b05-e603-4c9f-b103-db3df871a8ac)

**Required:**
- https://github.com/overextended/ox_inventory

This is a small resource we use on Popcorn RP written by the great @Demigod916 https://github.com/Demigod916 (permission was given to upload this) and used to sell items to NPCs for black money. Ox Inventory allows you to use items as currency, but this allows you to sell items for groups of items like black_money or cash. 

Please support Demi here: https://ko-fi.com/demigod916

For example, you can sell gold chains, phones, etc. and receive black money in exchange.

This was initially written to use the "panty" item that comes with ox to give use to a joke/cringe item. 

Please ensure this after ox_inventory, and **make sure that you restart this resource if you restart ox_inventory every time.**

Note that the price should be set to the number of items you want sold, so if you want players to sell stacks of 5, set the price to 5, 10 then set to 10. If you restart ox_inventory, this will make them sell the items for that much, and players will receive five black_money for one panties item for example, so always make sure it's running before introducing it to your community.

Please add all items you intend to be handled this way to the **ox_black_money_shop.lua** file. Prices per purchase (not item) are set in there. 


An Example of how you should format your shops to work with this:

```
    CreepyDude = {
        name = 'Creep',
        inventory = {
            { name = 'black_money', price = 1, currency = 'panties', },
        },
        locations = {

        },
        targets = {
            {
                ped = `player_two`,
                scenario = 'WORLD_HUMAN_LEANING_CASINO_TERRACE',
                loc = vector3(1918.23, 3908.15, 32.44),
                heading = 56.88,
                distance = 2.0,
            },
        }
    },

```

Example of a shop using mixed items (both selling and buying items):

```
    PawnShop = {
        name = 'Fence',
        inventory = {
            { name = 'black_money', price = 5, currency = 'goldchain', },
            { name = 'black_money', price = 5, currency = 'diamond_ring', },
            { name = 'black_money', price = 5, currency = 'rolex', },
            { name = 'phone', price = 500, currency = 'black_money', },
        },
        locations = {

        },
        targets = {
            {
                ped = `cs_mrk`,
                scenario = 'WORLD_HUMAN_LEANING_CASINO_TERRACE',
                loc = vector3(414.37, 343.47, 101.5),
                heading = 342.77,
                distance = 2.0,
            },
        }
    },

```
