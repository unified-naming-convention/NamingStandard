assert(getgenv, "getgenv is required to run script")

local HttpService = game:GetService("HttpService")

local function GetDir(path)
    local url = "https://api.github.com/repos/unified-naming-convention/NamingStandard/contents/api/"..(path or "")
    print("[*] Downloading..", url)
    local res = game:HttpGet(url)

    return HttpService:JSONDecode(res)
end

local function GetAllFiles(dir, files)
    for i,v in pairs(dir) do
        if v.type == "file" then
            table.insert(files, v.name:sub(1, #v.name - 3))
        else
            GetAllFiles(GetDir(v.name), files)
        end
    end
end

local files = {}
print("[*] Downloading standard..")
GetAllFiles(GetDir(), files)
print("[!] Standard download finished!")

local function DeleteFind(name)
    local idx = table.find(files, name)

    if idx then
        table.remove(files, idx)
    end
end

DeleteFind("TEMPLATE")
DeleteFind("bit_library")
DeleteFind("WebSockets")

local function CheckEnv(name, tab)
    if tab then
        if getgenv()[tab] then
            if getgenv()[tab][name] then
                return true
            end
        end
    else
        return getgenv()[name] ~= nil
    end

    return false
end

local total = #files
local count = 0
local missing = {}

print("[*] Checking environment..")

for i,v in pairs(files) do
    local st,se = string.find(v, ".", 1, true)

    if st then
        local tab = v:sub(1, st - 1)
        local field = v:sub(se + 1)

        if CheckEnv(field, tab) then
            count += 1
        else
            table.insert(missing, v)
        end
    else
        if CheckEnv(v) then
            count += 1
        else
            table.insert(missing, v)
        end
    end
end

-- these are handled seperately
total += 2

if bit then
    count += 1
end

if WebSocket and WebSocket.connect then
    count += 1
end

print("[*] Done scoring!")

local score = math.round((count / total) * 100)

print("[*] Score: "..score.."%"..", "..count.." / "..total)

if #missing > 0 then
    print("[*] Missing:")
    table.foreach(missing, print)
end

print("[*] Writing to file..")

local data = ""

data ..= "Score: "..score.."%"..", "..count.." / "..total.."\n"
data ..= "\n"

if #missing > 0 then
    data ..= "Missing:"
    table.foreach(missing, function(i,v)
        data ..= ("["..i.."] "..v)
    end)
end

writefile("UNC_envchecktest.txt", data)

print("[*] Wrote results to: ".."UNC_envchecktest.txt")