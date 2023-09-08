# ZorAPI
Zorak's API

A simple flask application that communicates with a JSON based database. Designed to run in the localhost of the Zorak server.
### Routes

#### GET - /
Grabs the homepage. Nothing to see here.

#### GET - /hc
Get's a healthcheck.

returns 'up' if online
```json
{
    "status": "up"
}
```

#### GET - /settings/commands/all
returns a dict of all settings and their statuses
```json
[
    { "command1":false
    , "command2":false
    , "command3":false
    , "command4":false
    , "command5":false
    }
, 200
] 
```

#### POST - /settings/commands/< command >
Toggles a command on and off. If on, return off. If off, return on
```json
[
    "command1 : true"
, 200
]
```
#### POST - /settings/commands/toggle-all/< status >
Params: on/off

Toggles all commands to off or on. 
```json
[
    "Off",
    200
]
```