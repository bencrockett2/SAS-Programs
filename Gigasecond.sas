
data gigasecond;
	informat birthtime datetime16.
			 gigasecond_min 6.
			gigasecond_max 6.;
	format 	birthtime datetime16.
			gigasecond_min datetime16.
			gigasecond_max datetime16.;
	input 	birthtime 
			gigasecond_min ;
	gigasecond_min = birthtime + 1e9 - 14; * There have been 14 leap seconds since 8/5/1985, which SAS doesn't track. Subtract to account for them;
	gigasecond_max = gigasecond_min + 59;
datalines;
		05Aug85:22:39:00 .
		;
run;
