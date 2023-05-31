local lfs = require("lfs")

for file in lfs.dir("./lua") do
    if file ~= "." and file ~= ".." then
        print(file)
    end
end

