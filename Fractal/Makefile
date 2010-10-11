# pitecan.com:~/PIM/programs の wikifreq.rb でwikifreq.txtを生成
# wikifreq.gnuplot で wikifreq.txt をグラフ化

freqgraph:
	gnuplot wikifreq.gnuplot

# pitecan.com:~/PIM/programs の wikiaccesstime.rb でwikiaccesstime.txtを生成
# access2interval で wikiaccesstime.txt から wikiaccessinterval.txtを生成
# wikiaccessinterval.gnuplot で wikiaccessinterval.txt をグラフ化

intervalgraph:
	gnuplot wikiaccessinterval.gnuplot

#
# zipf.gnuplot は Zipf の法則を描くもの
#

zipfgraph:
	gnuplot zipf.gnuplot

#
# filesize.rb で ファイルサイズをリスト
#
filesizegraph:
	ruby filesize.rb | sort -r -n > filesize.txt
	egrep -i -v '(mp3|mp4|mpg|wmv|avi|m4v|msf|dmg|mov|flv|zip|m4a|gz|jpg|pag|mem|hdd)$$' filesize.txt | grep -v 'svn' > filesize2.txt
	gnuplot filesize2.gnuplot
