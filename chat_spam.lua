--[=[
-- very private converter, don't skid!
-- https://luau.org/demo
local chatspam_swimhubskeet = {
	"SWIMHUB DON'T NEED UPDATE (◣_◢)",
	"SWIMHUB DON'T NEED LUARMOR (◣_◢)",
	"SWIMHUB DON'T NEED TO PASTE(◣_◢)",
	"SWIMHUB IS > ALL (◣_◢)",
	"SWIMHUB PRIVATE IS > SWIMHUB (◣_◢)",
	"SWIMHUB DEV BUILD > SWIMHUB PRIVATE (◣_◢)",
	"SWIMHUB OLD STILL > ALL (◣_◢)",
	"SWIMHUB TP KILL EXPLOIT RELEASING NEXT WEEK (◣_◢)",
	"SWIMHUB PRIVATE EXPLOITS RELEASING NEXT WEEK (◣_◢)",
	"SWIMHUB CBO SIMULATOR RELEASING NEXT WEEK (◣_◢)",
	"SWIMHUB KILL ALL RELEASING NEXT WEEK (◣_◢)",
	"SWIMHUB CORPSE ESP RELEASING NEXT WEEK (◣_◢)",
	"SWIMHUB DEV TIME: 1 HOUR A DAY (◣_◢)",
}
local chatspam_randomwords = {
	"swimhub",
	"(◣_◢)",
	"paste",
	"ethereal",
	"leak",
	"script",
	"pastebin",
	"crumbleware",
	"best",
	"on top",
	"#1",
	"download",
	"2024",
	"no virus",
	"real",
	"fake"
}
local chatspam_emojis = {
	("😀"):rep(200),
	("😼"):rep(200),
	("😭"):rep(200),
	("😡"):rep(200),
	("🤖"):rep(200),
	("😎"):rep(200),
}
for _, v in chatspam_emojis do
	local well = ""
	v:gsub(".", function(str)well=well.."\\"..str:byte()end)
	print("\""..well.."\",")
end
]=]
return (function(Library, groupbox, sayfunc, maxemojis, maxlen)
    local spams = {
        ["swimhub skeet"] = {
            "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\85\80\68\65\84\69\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\76\85\65\82\77\79\82\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\68\79\78\39\84\32\78\69\69\68\32\84\79\32\80\65\83\84\69\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\73\83\32\62\32\65\76\76\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\80\82\73\86\65\84\69\32\73\83\32\62\32\83\87\73\77\72\85\66\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\68\69\86\32\66\85\73\76\68\32\62\32\83\87\73\77\72\85\66\32\80\82\73\86\65\84\69\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\79\76\68\32\83\84\73\76\76\32\62\32\65\76\76\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\84\80\32\75\73\76\76\32\69\88\80\76\79\73\84\32\82\69\76\69\65\83\73\78\71\32\78\69\88\84\32\87\69\69\75\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\80\82\73\86\65\84\69\32\69\88\80\76\79\73\84\83\32\82\69\76\69\65\83\73\78\71\32\78\69\88\84\32\87\69\69\75\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\67\66\79\32\83\73\77\85\76\65\84\79\82\32\82\69\76\69\65\83\73\78\71\32\78\69\88\84\32\87\69\69\75\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\75\73\76\76\32\65\76\76\32\82\69\76\69\65\83\73\78\71\32\78\69\88\84\32\87\69\69\75\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\67\79\82\80\83\69\32\69\83\80\32\82\69\76\69\65\83\73\78\71\32\78\69\88\84\32\87\69\69\75\32\40\226\151\163\95\226\151\162\41",
            "\83\87\73\77\72\85\66\32\68\69\86\32\84\73\77\69\58\32\49\32\72\79\85\82\32\65\32\68\65\89\32\40\226\151\163\95\226\151\162\41"
        },
        ["emojis"] = {
            "\240\159\152\128",
            "\240\159\152\188",
            "\240\159\152\173",
            "\240\159\152\161",
            "\240\159\164\150",
            "\240\159\152\142",
        },
        ["random words"] = {
            "\115\119\105\109\104\117\98",
            "\40\226\151\163\95\226\151\162\41",
            "\112\97\115\116\101",
            "\101\116\104\101\114\101\97\108",
            "\108\101\97\107",
            "\115\99\114\105\112\116",
            "\112\97\115\116\101\98\105\110",
            "\99\114\117\109\98\108\101\119\97\114\101",
            "\98\101\115\116",
            "\111\110\32\116\111\112",
            "\35\49",
            "\100\111\119\110\108\111\97\100",
            "\50\48\50\52",
            "\110\111\32\118\105\114\117\115",
            "\114\101\97\108",
            "\102\97\107\101"
        }
    }
    local enabled, spamtype, speed = false, "swimhub skeet", 3
    groupbox:AddToggle('newchatspam_enabled', {Text = 'new chat spam',Default = false,Callback = function(first)
        enabled = first
    end})
    groupbox:AddDropdown('newchatspam_type', {Values = {"swimhub skeet", "emojis", "random words"},Default = 1,Multi = false,Text = 'chat spam type',Callback = function(Value)
        spamtype = Value
    end})
    groupbox:AddSlider('newchatspam_multiplier', { Text = 'spam speed', Default = 3, Min = 1, Max = 5, Rounding = 1, Suffix = "s", Compact = false, Callback = function(first)
        speed = first
    end})
    local pos = 0
    local function genrandom()
        local len = maxlen
        local currstring = ""
        local tbl = spams["random words"]
        while currstring:len() <= len do
            currstring = currstring..tbl[math.random(#tbl)].." "
        end
        return currstring
    end
    local function genemjois()
        local len = maxemojis
        local currstring = ""
        local tbl = spams["emojis"][pos]
        while currstring:len() / 4 --[[\240\159\152\128, four bytes]] <= len do
            currstring = currstring..tbl[math.random(#tbl)].." "
        end
        return currstring
    end
    task.spawn(function()
        while wait(speed) do if enabled then
            pos = spamtype ~= "random" and (#spams[spamtype][pos] <= pos + 1 and 1 or pos + 1) or pos
            sayfunc(spamtype == "random" and genrandom() or spamtype == "emojis" and genemjois() or spams[spamtype][pos])
        end end
    end)
end)(...)
