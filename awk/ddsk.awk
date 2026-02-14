BEGIN {
    ddsked = 0
    cnt = 0
    ddsk_goal= "ドドスコスコスコドドスコスコスコドドスコスコスコ"
    ddsk_goal= "ドドスコスコスコ" #shorter string for debugging
    
    ddsk[0] = "ドド"
    ddsk[1] = "スコ"
    text = ""
    
    srand()
    while(ddsked==0 && cnt < 30) {
	tmp = int(rand()*2) #0 or 1
	#print tmp
	print ddsk[tmp] #ddsk picked this time
	text = text ddsk[tmp] #this is concatnate
	#cnt += 1
	#print text
	if(length(text)>=length(ddsk_goal)) {
	    if(match(text,ddsk_goal)) {
		    ddsked=1
		}
	    #next: cut off oldest ddsk
	    text = substr(text,length(ddsk[0])+1)
	    #print text
	}
    }
#    print ddsk_goal
}

END {
    print "ラブ注入♡"
}
