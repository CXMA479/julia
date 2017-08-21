function stringFilter(s::Array{String,1},pattern::String)
	return s[   map(contains,s,repeat([pattern],outer=length(s)))    ]
end

function startswithFilter(s::Array{String,1},pattern::String)
	return s[   map(startswith,s,repeat([pattern],outer=length(s)))    ]
end
