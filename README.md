# originsro.org market viewer 

## Description 

**market.sh** — downloads market data json and makes a commit to github, use cron to do it periodically (`$ORO_TOKEN` and `$GITHUB_TOKEN` enviroment variables should be exported); 

**market.json** — market data json, is updated every 5 minutes; 

**item_db.json** — pre-re hercules item db, parsed using libconf.py and saved as `{'id': 'AegisName', ...}` dictionary; 

**index.html** — vanilla-js app prototype (no jquery, no bootstrap) to render whole market and notify about low price; 


## How to use 

![Alt text](oromarket.png?raw=true)

use `filter` field to filter by `item` column content; 

also you can set the `limit` and press `add preset` to add a button for a quick filter; 

added buttons are saved to browser localstorage and should survive page re-opening; 

when new data arrives, a check for every preset triggers: if there are items with price less than `limit` of this preset (or more if it was a `Buyers` preset) - preset button is brushed to red; 

it's a [forever]prototype, so you can't delete already added buttons yet 