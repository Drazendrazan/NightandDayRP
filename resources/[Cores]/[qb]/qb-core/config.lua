Config = {}

Config.Money = {}
Config.Server = {} 
Config.Player = {}
Config.Server.PermissionList = {} 


Config.MaxPlayers = GetConvarInt('sv_maxclients', 32) 
Config.IdentifierType = "steam" 
Config.DefaultSpawn = {x=-1035.71,y=-2731.87,z=12.86,a=0.0}
Config.Money.MoneyTypes = {['cash'] = 500, ['bank'] = 5000, ['crypto'] = 0 }
Config.Money.DontAllowMinus = {'cash', 'crypto'}
Config.Server.whitelist = false 
Config.Server.discord = "Soon"
Config.Server.License = "" -- Cracked fuck NL scamming pussy
Config.Server.Shorttag = "qb-" -- Wish to change shorttags ?
Config.Player.MaxWeight = 325000
Config.Player.MaxInvSlots = 25

Config.Player.Bloodtypes = {
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-",
}