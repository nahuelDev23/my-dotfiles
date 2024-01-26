#!/ysr/bin/env bash
ans=$(tizonia-remote playstatus 2>/dev/null)
if [ -z $ans ]; then
	command="tizonia --shuffle --youtube-audio-mix-search 'chopin' -d"
	echo "%{T4}%{A1:$command:} %{A}%{T-}"
elif [ $ans = "\"Playing\"" ]; then
	echo "%{T4}%{A1:tizonia-remote prev:}%{A}%{A1:tizonia-remote pause:}%{A}%{A1:tizonia-remote quit:}%{A}%{A1:tizonia-remote next:}%{A}%{T-}"
elif [ $ans = "\"Paused\"" ]; then
	echo "%{T4}%{A1:tizonia-remote prev:}%{A}%{A1:tizonia-remote play:} %{A}%{A1:tizonia-remote quit:}%{A}%{A1:tizonia-remote next:}%{A}%{T-}"
fi
