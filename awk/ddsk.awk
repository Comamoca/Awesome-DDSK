BEGIN {
    ddsked = 0
    cnt = 0
    ddsk_goal= "ドドスコスコスコドドスコスコスコドドスコスコスコ"
    
    ddsk[0] = "ドド"
    ddsk[1] = "スコ"
    text = ""
    
    srand()
    while(ddsked==0) {
	tmp = int(rand()*2) #0 or 1
	print ddsk[tmp] #ddsk picked this time
	text = text ddsk[tmp] #this is concatnation
	if(length(text)>=length(ddsk_goal)) {
	    if(match(text,ddsk_goal)) {
		    ddsked=1
		}
	    #next: cut off oldest ddsk
	    text = substr(text,length(ddsk[0])+1)
	}
    }
}

END { #yeah finally...
    print "ラブ注入♡"
}
