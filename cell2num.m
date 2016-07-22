function result = cell2num(num)
result = num;
if iscell(num)
    result = str2num(char(num));
else if ischar(num)
    result = str2num(num);
end
end