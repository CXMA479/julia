function stringFilter(s::Array{String,1},pattern::String)
	return s[   map(contains,s,repeat([pattern],outer=length(s)))    ]
end

function startswithFilter(s::Array{String,1},pattern::String)
	return s[   map(startswith,s,repeat([pattern],outer=length(s)))    ]
end


###########    for progress bar  #######
  cur_p_p=0
  tic()
  for line_s_idx =1: length(fixedFs)
    cur_p = Int64(round(line_s_idx/length(fixedFs).*100))
    if cur_p > cur_p_p
        cur_p_p=cur_p
#	deleteat!(imgList,findin(l,true)) ;
#	l=zeros(Bool,length(imgList))
        print_with_color(:blue,	string("proc: ",cur_p,"%"))
        toc()
        tic()
    end
#################  end    ###################
