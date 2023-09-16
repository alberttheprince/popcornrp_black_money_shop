# ox_blackmoney_shop
![image](https://github.com/alberttheprince/ox_blackmoney_shop/assets/85725579/189b6b05-e603-4c9f-b103-db3df871a8ac)

**Required:**
- https://github.com/overextended/ox_inventory

This is a small resource we use on Popcorn RP written by the great @Demigod916 (permission was given to upload this) and used to sell items to NPCs for black money. Ox Inventory allows you to use items as currency, but this allows you to sell items for groups of items like black_money or cash. 

For example, you can sell gold chains, phones, etc. and receive black money in exchange.

This was initially written to use the "panty" item that comes with ox to give use to a joke/cringe item. 

Please ensure this after ox_inventory, and **make sure that you restart this resource if you restart ox_inventory every time.**

An Example of how you should format your shops to work with this:

```
    CreepyDude = {
        name = 'Creep',
        inventory = {
            { name = 'black_money', price = 1, currency = 'panties', },
            { name = 'black_money', price = 10, currency = 'panties', },
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
