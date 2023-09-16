# ox_blackmoney_shop

**Required:**
- https://github.com/overextended/ox_inventory

This is a small resource we use on Popcorn RP written by the great @Demigod916, used to sell items to NPCs for black money. Ox Inventory gives you the ability to use items as currency, but this allows you to trade items for groups of items/money. 

For example, you can sell gold chains, phones, etc and receive black money in exchange.

This was initially written to make use of the "panty" item that comes with ox, to make use of a joke/cringe item. 

Ensure this after ox_inventory, and make sure that you restart this resource if you restart ox_inventory, every time.

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
