<!DOCTYPE html>
<html lang="en">
<head>
    <title>图书管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="google-site-verification" content="bERYeomIC5eBWlPLupPPYPYGA9GvAUKzFHh3WIw24Xs" />
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Search The Pirate Bay" />
    <link rel="stylesheet" type="text/css" href="/static/css/pirate6.css"/>
    <link rel="canonical" href="//thepiratebay.org/search/linux/0/99/200" />
    <style type="text/css">
        .searchBox{
            margin: 6px;
            width: 300px;
            vertical-align: middle;
            padding: 2px;
            background-image:url('//thepiratebay.org/static/img/icon-https.gif');
            background-repeat:no-repeat;
            background-position: right;
        }
        .detLink {
            font-size: 1.2em;
            font-weight: 400;
        }
        .detDesc {
            color: #4e5456;
        }
        .detDesc a:hover {
            color: #000099;
            text-decoration: underline;
        }
        .sortby {
            text-align: left;
            float: left;
        }
        .detName {
            padding-top: 3px;
            padding-bottom: 2px;
        }
        .viewswitch {
            font-style: normal;
            float: right;
            text-align: right;
            font-weight: normal;
        }
    </style>
    <script src="/static/js/jquery.min.js" type="text/javascript"></script>
    <script src="/static/js/tpb.js" type="text/javascript"></script>
    <meta name="description" content="Search for and download any torrent from the pirate bay using search query linux. Direct download via magnet link."/>
    <meta name="keywords" content="linux direct download torrent magnet tpb piratebay search"/>

    <script language="javascript" type="text/javascript">if (top.location != self.location) {top.location.replace(self.location);}</script>
</head>

<body>
    <div id="header">

        <form method="get" id="q" action="/s/">
            <a href="/" class="img"><img src="/static/img/out.png" id="TPBlogo" alt="The Pirate Bay" /></a>
            <b><a href="/" title="Search Books">搜索</a></b>&nbsp;&nbsp;|&nbsp;
 <a href="/add" title="Music">添加</a>&nbsp;&nbsp;|&nbsp;
 <a href="/top" title="Top 100">Top 10</a>
            <br /><input type="search" class="inputbox" title="Pirate Search" name="q" placeholder="Search here..." value="linux" /><input value="Pirate Search" type="submit" class="submitbutton"  /><br />
            <label title="文学" accesskey="a"><input id="all" onclick="setAll();" type="checkbox" checked>所有</label>
            <label title="经济" accesskey="x"><input name="audio" id="audio" onclick="rmAll();" type="checkbox">文学</label>
            <label title="经济" accesskey="q"><input name="audio" id="audio" onclick="rmAll();" type="checkbox">经济</label>
            <label title="艺术" accesskey="w"><input name="video" id="video" onclick="rmAll();" type="checkbox">艺术</label>
            <label title="自然科学" accesskey="e"><input name="apps" id="apps" onclick="rmAll();" type="checkbox">自然科学</label>
            <label title="哲学" accesskey="r"><input name="games" id="games" onclick="rmAll();" type="checkbox">哲学</label>
            <label title="军事政治" accesskey="t"><input name="porn" id="porn" onclick="rmAll();" type="checkbox">军事政治</label>
            <label title="其他" accesskey="y"><input name="other" id="other" onclick="rmAll();" type="checkbox">其他</label>

            <select id="category" name="category" onchange="javascript:setAll();">
                <option value="0">All</option>
                <optgroup label="Audio">
                    <option value="101">Music</option>
                    <option value="102">Audio books</option>
                    <option value="103">Sound clips</option>
                    <option value="104">FLAC</option>
                    <option value="199">Other</option>
                </optgroup>
                <optgroup label="Video">
                    <option value="201">Movies</option>
                    <option value="202">Movies DVDR</option>
                    <option value="203">Music videos</option>
                    <option value="204">Movie clips</option>
                    <option value="205">TV shows</option>
                    <option value="206">Handheld</option>
                    <option value="207">HD - Movies</option>
                    <option value="208">HD - TV shows</option>
                    <option value="209">3D</option>
                    <option value="299">Other</option>
                </optgroup>
                <optgroup label="Applications">
                    <option value="301">Windows</option>
                    <option value="302">Mac</option>
                    <option value="303">UNIX</option>
                    <option value="304">Handheld</option>
                    <option value="305">IOS (iPad/iPhone)</option>
                    <option value="306">Android</option>
                    <option value="399">Other OS</option>
                </optgroup>
                <optgroup label="Games">
                    <option value="401">PC</option>
                    <option value="402">Mac</option>
                    <option value="403">PSx</option>
                    <option value="404">XBOX360</option>
                    <option value="405">Wii</option>
                    <option value="406">Handheld</option>
                    <option value="407">IOS (iPad/iPhone)</option>
                    <option value="408">Android</option>
                    <option value="499">Other</option>
                </optgroup>
                <optgroup label="Porn">
                    <option value="501">Movies</option>
                    <option value="502">Movies DVDR</option>
                    <option value="503">Pictures</option>
                    <option value="504">Games</option>
                    <option value="505">HD - Movies</option>
                    <option value="506">Movie clips</option>
                    <option value="599">Other</option>
                </optgroup>
                <optgroup label="Other">
                    <option value="601">E-books</option>
                    <option value="602">Comics</option>
                    <option value="603">Pictures</option>
                    <option value="604">Covers</option>
                    <option value="605">Physibles</option>
                    <option value="699">Other</option>
                </optgroup>
            </select>

            <input type="hidden" name="page" value="0" />
            <input type="hidden" name="orderby" value="99" />
        </form>
    </div><!-- // div:header -->

    <h2><span>Search results: linux</span>&nbsp;Displaying hits from 0 to 30 (approx 79 found)</h2>

<div id="SearchResults"><div id="content">
	
    <div id="main-content">
<table id="searchResult">
	<thead id="tableHead">
		<tr class="header">
			<th><title="Order by Type">类型</a></th>
			<th><div class="sortby"><a href="/search/linux/0/1/200" title="Order by Name">书籍</a>
			<th><abbr title="Seeders"><a href="/search/linux/0/8/200" title="Order by Seeders">作者</a></abbr></th>
			<th><abbr title="Leechers"><a href="/search/linux/0/9/200" title="Order by Leechers">热度</a></abbr></th>
		</tr>
	</thead>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/204" title="More from this category">Movie clips</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8867798/CBT_Nuggets_-_LPI_Linux_LPIC-1_101_and_CompTIA_Linux_" class="detLink" title="Details for CBT Nuggets - LPI Linux LPIC-1 101 and CompTIA Linux+">CBT Nuggets - LPI Linux LPIC-1 101 and CompTIA Linux+</a>
</div>
<a href="magnet:?xt=urn:btih:0fe3b4baf406bce0355acc6ea16d2142200effc6&dn=CBT+Nuggets+-+LPI+Linux+LPIC-1+101+and+CompTIA+Linux%2B&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/y7"></a>
			<font class="detDesc">Uploaded 08-31&nbsp;2013, Size 813.11&nbsp;MiB, ULed by <a class="detDesc" href="/user/y7/" title="Browse y7">y7</a></font>
		</td>
		<td align="right">37</td>
		<td align="right">1</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8759146/CBT_Nuggets_-_BackTrack_and_Kali_Linux" class="detLink" title="Details for CBT Nuggets - BackTrack and Kali Linux">CBT Nuggets - BackTrack and Kali Linux</a>
</div>
<a href="magnet:?xt=urn:btih:31b39894b1b5e0db687ea9d72b5dc08cf64f3c74&dn=CBT+Nuggets+-+BackTrack+and+Kali+Linux&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/NepsterJay"></a>
			<font class="detDesc">Uploaded 07-30&nbsp;2013, Size 2.59&nbsp;GiB, ULed by <a class="detDesc" href="/user/NepsterJay/" title="Browse NepsterJay">NepsterJay</a></font>
		</td>
		<td align="right">36</td>
		<td align="right">5</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/12266108/UDEMY_LEARNING_LINUX_CENTOS_FROM_SCRATCH_TUTORIAL" class="detLink" title="Details for UDEMY LEARNING LINUX CENTOS FROM SCRATCH TUTORIAL">UDEMY LEARNING LINUX CENTOS FROM SCRATCH TUTORIAL</a>
</div>
<a href="magnet:?xt=urn:btih:337b6dbb824ff8acf38846d4698746df7bf2b5c9&dn=UDEMY+LEARNING+LINUX+CENTOS+FROM+SCRATCH+TUTORIAL&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/BarCraft"></a>
			<font class="detDesc">Uploaded 08-22&nbsp;2015, Size 1.09&nbsp;GiB, ULed by <a class="detDesc" href="/user/BarCraft/" title="Browse BarCraft">BarCraft</a></font>
		</td>
		<td align="right">24</td>
		<td align="right">4</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/9681585/Infiniteskills_-_Learning_Ubuntu_Linux" class="detLink" title="Details for Infiniteskills - Learning Ubuntu Linux">Infiniteskills - Learning Ubuntu Linux</a>
</div>
<a href="magnet:?xt=urn:btih:7c7dca2ac0d7d5c3526fb21fd52b260e6967719e&dn=Infiniteskills+-+Learning+Ubuntu+Linux&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/NepsterJay"></a>
			<font class="detDesc">Uploaded 03-01&nbsp;2014, Size 810.69&nbsp;MiB, ULed by <a class="detDesc" href="/user/NepsterJay/" title="Browse NepsterJay">NepsterJay</a></font>
		</td>
		<td align="right">22</td>
		<td align="right">1</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/204" title="More from this category">Movie clips</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8867794/CBT_Nuggets_-_LPI_Linux_LPIC-1_102_and_CompTIA_Linux_" class="detLink" title="Details for CBT Nuggets - LPI Linux LPIC-1 102 and CompTIA Linux+">CBT Nuggets - LPI Linux LPIC-1 102 and CompTIA Linux+</a>
</div>
<a href="magnet:?xt=urn:btih:cce3dbff5b36dd9e1d3d3285962f3f252f1d2dcc&dn=CBT+Nuggets+-+LPI+Linux+LPIC-1+102+and+CompTIA+Linux%2B&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/y7"></a>
			<font class="detDesc">Uploaded 08-31&nbsp;2013, Size 643.58&nbsp;MiB, ULed by <a class="detDesc" href="/user/y7/" title="Browse y7">y7</a></font>
		</td>
		<td align="right">20</td>
		<td align="right">1</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/6113010/Linux_CBT_Scripting_BASH__PERL__PYTHON__PHP" class="detLink" title="Details for Linux CBT Scripting BASH, PERL, PYTHON, PHP">Linux CBT Scripting BASH, PERL, PYTHON, PHP</a>
</div>
<a href="magnet:?xt=urn:btih:0e267f71a9adb2b1011d85c826ccd9f736d3143e&dn=Linux+CBT+Scripting+BASH%2C+PERL%2C+PYTHON%2C+PHP&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 01-19&nbsp;2011, Size 1.08&nbsp;GiB, ULed by <a class="detDesc" href="/user/roadrunnerside8/" title="Browse roadrunnerside8">roadrunnerside8</a></font>
		</td>
		<td align="right">16</td>
		<td align="right">1</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/12303404/Udemy_-_Ubuntu_Linux_Server_Troubleshooting" class="detLink" title="Details for Udemy - Ubuntu Linux Server Troubleshooting">Udemy - Ubuntu Linux Server Troubleshooting</a>
</div>
<a href="magnet:?xt=urn:btih:01c666cf5796f22414ca08f50404ba0d0fe6b814&dn=Udemy+-+Ubuntu+Linux+Server+Troubleshooting&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/The_Abee"></a>
			<font class="detDesc">Uploaded 08-28&nbsp;2015, Size 1.37&nbsp;GiB, ULed by <a class="detDesc" href="/user/The_Abee/" title="Browse The_Abee">The_Abee</a></font>
		</td>
		<td align="right">10</td>
		<td align="right">2</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8741813/CBT_Nuggets_-_Linux_in_the_Real_World" class="detLink" title="Details for CBT Nuggets - Linux in the Real World">CBT Nuggets - Linux in the Real World</a>
</div>
<a href="magnet:?xt=urn:btih:502baa93e375f06196bbfd28496ec43c521d8555&dn=CBT+Nuggets+-+Linux+in+the+Real+World&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 07-26&nbsp;2013, Size 1.79&nbsp;GiB, ULed by <a class="detDesc" href="/user/ethics2013/" title="Browse ethics2013">ethics2013</a></font>
		</td>
		<td align="right">8</td>
		<td align="right">0</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/10758076/LiveLessons_-_Linux_System_Administration" class="detLink" title="Details for LiveLessons - Linux System Administration">LiveLessons - Linux System Administration</a>
</div>
<a href="magnet:?xt=urn:btih:a0d94718d96c75910b2da725e92cb42f64f17f2f&dn=LiveLessons+-+Linux+System+Administration&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/NepsterJay"></a>
			<font class="detDesc">Uploaded 08-13&nbsp;2014, Size 2.58&nbsp;GiB, ULed by <a class="detDesc" href="/user/NepsterJay/" title="Browse NepsterJay">NepsterJay</a></font>
		</td>
		<td align="right">8</td>
		<td align="right">4</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/201" title="More from this category">Movies</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/10617360/The_Code_-_Story_of_Linux_(2001)_DVDRip_x264_AC3" class="detLink" title="Details for The Code - Story of Linux (2001) DVDRip x264 AC3">The Code - Story of Linux (2001) DVDRip x264 AC3</a>
</div>
<a href="magnet:?xt=urn:btih:1b2fde54b1692c9c67dfaa088e41fd6a52982ce6&dn=The+Code+-+Story+of+Linux+%282001%29+DVDRip+x264+AC3&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 07-23&nbsp;2014, Size 769.04&nbsp;MiB, ULed by <i>Anonymous</i></font>
		</td>
		<td align="right">7</td>
		<td align="right">0</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/9791122/Kali_Linux_-_Backtrack_Evolved_(video_series)" class="detLink" title="Details for Kali Linux - Backtrack Evolved (video series)">Kali Linux - Backtrack Evolved (video series)</a>
</div>
<a href="magnet:?xt=urn:btih:51eea5d246879a5eb82bb5c79b666acac795e296&dn=Kali+Linux+-+Backtrack+Evolved+%28video+series%29&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 03-19&nbsp;2014, Size 611.71&nbsp;MiB, ULed by <i>Anonymous</i></font>
		</td>
		<td align="right">5</td>
		<td align="right">3</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/6433349/Digital_Privacy__RFIDs__NSA__Spying___Linux__Torrents_[LitZ_Bund" class="detLink" title="Details for Digital Privacy, RFIDs, NSA, Spying & Linux, Torrents [LitZ~Bund">Digital Privacy, RFIDs, NSA, Spying & Linux, Torrents [LitZ~Bund</a>
</div>
<a href="magnet:?xt=urn:btih:eb87a6bbd4d497268c7249c63f87dddbb5eec1b5&dn=Digital+Privacy%2C+RFIDs%2C+NSA%2C+Spying+%26+Linux%2C+Torrents+%5BLitZ%7EBund&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 05-30&nbsp;2011, Size 6.66&nbsp;GiB, ULed by <a class="detDesc" href="/user/litzwires/" title="Browse litzwires">litzwires</a></font>
		</td>
		<td align="right">4</td>
		<td align="right">0</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/7578325/Projeto-Linux-BR[CPTURBO]" class="detLink" title="Details for Projeto-Linux-BR[CPTURBO]">Projeto-Linux-BR[CPTURBO]</a>
</div>
<a href="magnet:?xt=urn:btih:37246aff327ff897baa62576155e7e89ec8c0ca1&dn=Projeto-Linux-BR%5BCPTURBO%5D&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 08-28&nbsp;2012, Size 3.34&nbsp;GiB, ULed by <a class="detDesc" href="/user/wolf_junior/" title="Browse wolf_junior">wolf_junior</a></font>
		</td>
		<td align="right">4</td>
		<td align="right">1</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/6417817/Train.Signal.CompTIA.Linux.Plus.Training.LX0-102.DVD2-DeBTiSO" class="detLink" title="Details for Train.Signal.CompTIA.Linux.Plus.Training.LX0-102.DVD2-DeBTiSO">Train.Signal.CompTIA.Linux.Plus.Training.LX0-102.DVD2-DeBTiSO</a>
</div>
<a href="magnet:?xt=urn:btih:7cac13d625ff5946ef8cf28b59c1bb8c28a434c8&dn=Train.Signal.CompTIA.Linux.Plus.Training.LX0-102.DVD2-DeBTiSO&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/MAFIAA."></a>
			<font class="detDesc">Uploaded 05-24&nbsp;2011, Size 3.1&nbsp;GiB, ULed by <a class="detDesc" href="/user/MAFIAA./" title="Browse MAFIAA.">MAFIAA.</a></font>
		</td>
		<td align="right">3</td>
		<td align="right">2</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/9012933/CBT.Nuggets_--_Backtrack._amp_.Kali.Linux_[x264]_[mkv]_[Re-EnCod" class="detLink" title="Details for CBT.Nuggets -- Backtrack.&amp;.Kali.Linux [x264] [mkv] [Re-EnCod">CBT.Nuggets -- Backtrack.&amp;.Kali.Linux [x264] [mkv] [Re-EnCod</a>
</div>
<a href="magnet:?xt=urn:btih:341764eab8da1118ca6c2878d275ed465bdece2f&dn=CBT.Nuggets+--+Backtrack.%26amp%3B.Kali.Linux+%5Bx264%5D+%5Bmkv%5D+%5BRe-EnCod&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 10-07&nbsp;2013, Size 842.63&nbsp;MiB, ULed by <a class="detDesc" href="/user/metal.run/" title="Browse metal.run">metal.run</a></font>
		</td>
		<td align="right">3</td>
		<td align="right">0</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/9743904/(Video2Brain)_Administracion_avanzada_de_servidor_Linux_(Esp)" class="detLink" title="Details for (Video2Brain) Administracion avanzada de servidor Linux (Esp)">(Video2Brain) Administracion avanzada de servidor Linux (Esp)</a>
</div>
<a href="magnet:?xt=urn:btih:18b75653d566c4d06476a8f0961a29d737dcb31a&dn=%28Video2Brain%29+Administracion+avanzada+de+servidor+Linux+%28Esp%29&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/enrey01"></a>
			<font class="detDesc">Uploaded 03-11&nbsp;2014, Size 119.54&nbsp;MiB, ULed by <a class="detDesc" href="/user/enrey01/" title="Browse enrey01">enrey01</a></font>
		</td>
		<td align="right">3</td>
		<td align="right">0</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/10944653/[Lynda]_Up_and_Running_with_CentOS_Linux-KTR" class="detLink" title="Details for [Lynda] Up and Running with CentOS Linux-KTR">[Lynda] Up and Running with CentOS Linux-KTR</a>
</div>
<a href="magnet:?xt=urn:btih:78c11e9ed83b3053a9601f48795959550c61179e&dn=%5BLynda%5D+Up+and+Running+with+CentOS+Linux-KTR&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 09-01&nbsp;2014, Size 206.07&nbsp;MiB, ULed by <a class="detDesc" href="/user/xKTRx/" title="Browse xKTRx">xKTRx</a></font>
		</td>
		<td align="right">3</td>
		<td align="right">0</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/6417787/Train.Signal.CompTIA.Linux.Plus.Training.LX0-101.DVD1-DeBTiSO" class="detLink" title="Details for Train.Signal.CompTIA.Linux.Plus.Training.LX0-101.DVD1-DeBTiSO">Train.Signal.CompTIA.Linux.Plus.Training.LX0-101.DVD1-DeBTiSO</a>
</div>
<a href="magnet:?xt=urn:btih:b7844f8d5d6f1f67c14c5ab73f5f6a6fa41ca4ee&dn=Train.Signal.CompTIA.Linux.Plus.Training.LX0-101.DVD1-DeBTiSO&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/MAFIAA."></a>
			<font class="detDesc">Uploaded 05-24&nbsp;2011, Size 2.13&nbsp;GiB, ULed by <a class="detDesc" href="/user/MAFIAA./" title="Browse MAFIAA.">MAFIAA.</a></font>
		</td>
		<td align="right">2</td>
		<td align="right">1</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8298860/Linux_CBT_videos." class="detLink" title="Details for Linux CBT videos.">Linux CBT videos.</a>
</div>
<a href="magnet:?xt=urn:btih:0ebbe140ed0f5724380b01fb962ba9be522a47cf&dn=Linux+CBT+videos.&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 03-25&nbsp;2013, Size 11.44&nbsp;GiB, ULed by <i>Anonymous</i></font>
		</td>
		<td align="right">2</td>
		<td align="right">4</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8811314/CBT_Nuggets_-_Linux_in_the_Real_World" class="detLink" title="Details for CBT Nuggets - Linux in the Real World">CBT Nuggets - Linux in the Real World</a>
</div>
<a href="magnet:?xt=urn:btih:aeb9f8b949ddb24e8db0e17be2feb67e0792403f&dn=CBT+Nuggets+-+Linux+in+the+Real+World&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/NepsterJay"></a>
			<font class="detDesc">Uploaded 08-14&nbsp;2013, Size 1.79&nbsp;GiB, ULed by <a class="detDesc" href="/user/NepsterJay/" title="Browse NepsterJay">NepsterJay</a></font>
		</td>
		<td align="right">2</td>
		<td align="right">2</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/9535614/Curso_Firewall_no_Linux_-_NetFilter" class="detLink" title="Details for Curso Firewall no Linux - NetFilter">Curso Firewall no Linux - NetFilter</a>
</div>
<a href="magnet:?xt=urn:btih:b8738f0ba910a29749519cc83321302927795dc5&dn=Curso+Firewall+no+Linux+-+NetFilter&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 01-28&nbsp;2014, Size 712.23&nbsp;MiB, ULed by <a class="detDesc" href="/user/m0rph3us7/" title="Browse m0rph3us7">m0rph3us7</a></font>
		</td>
		<td align="right">2</td>
		<td align="right">0</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/201" title="More from this category">Movies</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/3516869/RevolutionOS_(Linux_story).avi" class="detLink" title="Details for RevolutionOS (Linux story).avi">RevolutionOS (Linux story).avi</a>
</div>
<a href="magnet:?xt=urn:btih:f3fddbdaa79bede2e0a36edfde35909d666d5264&dn=RevolutionOS+%28Linux+story%29.avi&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 08-28&nbsp;2006, Size 701.37&nbsp;MiB, ULed by <a class="detDesc" href="/user/orvils/" title="Browse orvils">orvils</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">0</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/3522895/LearnKey_Linux_" class="detLink" title="Details for LearnKey Linux+">LearnKey Linux+</a>
</div>
<a href="magnet:?xt=urn:btih:c31c73cc321512dd5c47cfe4acbfec8121f0b4d0&dn=LearnKey+Linux%2B&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 09-12&nbsp;2006, Size 2.72&nbsp;GiB, ULed by <a class="detDesc" href="/user/orvils/" title="Browse orvils">orvils</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">1</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/3613939/Apache__MySQL__PHP_on_Linux" class="detLink" title="Details for Apache, MySQL, PHP on Linux">Apache, MySQL, PHP on Linux</a>
</div>
<a href="magnet:?xt=urn:btih:d25c5d195ee02aef8b0d7bfd185129d212ef50f4&dn=Apache%2C+MySQL%2C+PHP+on+Linux&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 02-08&nbsp;2007, Size 141.76&nbsp;MiB, ULed by <a class="detDesc" href="/user/Night-Hawk1987/" title="Browse Night-Hawk1987">Night-Hawk1987</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">0</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/4546414/Linux_CBT_RHEL5" class="detLink" title="Details for Linux CBT RHEL5">Linux CBT RHEL5</a>
</div>
<a href="magnet:?xt=urn:btih:cd79a5164ceeab64f558e0d24807c359d2273449&dn=Linux+CBT+RHEL5&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 12-01&nbsp;2008, Size 3.27&nbsp;GiB, ULed by <a class="detDesc" href="/user/misha_/" title="Browse misha_">misha_</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">0</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/5452301/Coreboot_-_Linux_Bios_-_26C3_-_Hacking_[MP4-ENG]" class="detLink" title="Details for Coreboot - Linux Bios - 26C3 - Hacking [MP4-ENG]">Coreboot - Linux Bios - 26C3 - Hacking [MP4-ENG]</a>
</div>
<a href="magnet:?xt=urn:btih:8b8d9a7180a986d1e668b70541e04fc972916681&dn=Coreboot+-+Linux+Bios+-+26C3+-+Hacking+%5BMP4-ENG%5D&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 03-22&nbsp;2010, Size 790.3&nbsp;MiB, ULed by <a class="detDesc" href="/user/exportacc/" title="Browse exportacc">exportacc</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">0</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/5476164/CBT_Nuggets_-_Linux_-_RH302" class="detLink" title="Details for CBT Nuggets - Linux - RH302">CBT Nuggets - Linux - RH302</a>
</div>
<a href="magnet:?xt=urn:btih:fac9b2048e5e8690f5ef79128fdd6026c59f3c61&dn=CBT+Nuggets+-+Linux+-+RH302&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 04-01&nbsp;2010, Size 1.92&nbsp;GiB, ULed by <a class="detDesc" href="/user/ShiFFo/" title="Browse ShiFFo">ShiFFo</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">0</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/8391864/CBT_Nuggets_-_BackTrack_and_Kali_Linux" class="detLink" title="Details for CBT Nuggets - BackTrack and Kali Linux">CBT Nuggets - BackTrack and Kali Linux</a>
</div>
<a href="magnet:?xt=urn:btih:b0e7eb7b1a67961e1b4148f7a9a96ce79dffaa33&dn=CBT+Nuggets+-+BackTrack+and+Kali+Linux&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 04-20&nbsp;2013, Size 2.59&nbsp;GiB, ULed by <a class="detDesc" href="/user/angelos2225/" title="Browse angelos2225">angelos2225</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">1</td>
	</tr>
	<tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/9592382/(Video2Brain)_Instalacion_y_administracion_de_servidor_Linux_(Es" class="detLink" title="Details for (Video2Brain) Instalacion y administracion de servidor Linux (Es">(Video2Brain) Instalacion y administracion de servidor Linux (Es</a>
</div>
<a href="magnet:?xt=urn:btih:73054ded626250713a3c74bd51c9485e2d657295&dn=%28Video2Brain%29+Instalacion+y+administracion+de+servidor+Linux+%28Es&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a><a href="/user/enrey01"></a>
			<font class="detDesc">Uploaded 02-09&nbsp;2014, Size 121.17&nbsp;MiB, ULed by <a class="detDesc" href="/user/enrey01/" title="Browse enrey01">enrey01</a></font>
		</td>
		<td align="right">1</td>
		<td align="right">0</td>
	</tr>
	<tr class="alt">
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">Video</a><br />
				(<a href="/browse/299" title="More from this category">Other</a>)
			</center>
		</td>
		<td>
<div class="detName">			<a href="/torrent/11280330/CBT_Nuggets_-_LPI_Linux_LPIC-1_101_and_CompTIA_Linux__Video___Fu" class="detLink" title="Details for CBT Nuggets - LPI Linux LPIC-1 101 and CompTIA Linux  Video + Fu">CBT Nuggets - LPI Linux LPIC-1 101 and CompTIA Linux  Video + Fu</a>
</div>
<a href="magnet:?xt=urn:btih:ddbeb08e63a60ac5485c335baa7313889a0cd7fc&dn=CBT+Nuggets+-+LPI+Linux+LPIC-1+101+and+CompTIA+Linux++Video+%2B+Fu&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Download this torrent using magnet"></a>
			<font class="detDesc">Uploaded 10-25&nbsp;2014, Size 813.15&nbsp;MiB, ULed by <i>Anonymous</i></font>
		</td>
		<td align="right">1</td>
		<td align="right">0</td>
	</tr>

</table>
</div>
<div align="center">1&nbsp;<a href="/search/linux/1/7/200/">2</a>&nbsp;<a href="/search/linux/2/7/200/">3</a>&nbsp;<a href="/search/linux/1/7/200/"><img src="/static/img/next.gif" border="0" alt="Next"/></a>&nbsp;
</div>
	</div></div></div><!-- //div:content -->

	<div id="foot" style="text-align:center;margin-top:1em;">
				<p>
			<a href="/login" title="Login">Login</a> | 
			<a href="/register" title="Register">Register</a> | 
			<a href="/language" title="Select language">Language / Select language</a> |
			<a href="/about" title="About">About</a> |
			<a href="/blog" title="Blog">Blog</a>
			<br />
			<!--<a href="/contact" title="Contact us">Contact us</a> |-->
			<a href="/policy" title="Usage policy">Usage policy</a> |
			<a href="http://uj3wazyk5u4hnvtk.onion" title="TOR">TOR</a> |
			<a href="/doodles" title="Doodles">Doodles</a> |
			<a href="http://pirates-forum.org/" title="Forum" target="_blank">Forum</a> 
			<br />
		</p>

<br /><a href="http://bitcoin.org" target="_NEW">BitCoin</a>: <b><a href="bitcoin:129TQVAroeehD9fZpzK51NdZGQT4TqifbG">129TQVAroeehD9fZpzK51NdZGQT4TqifbG</a></b><br /><br />

		<div id="fbanners">
			<a href="/rss" class="rss" title="RSS"><img src="/static/img/rss_small.gif" alt="RSS" /></a>
		</div><!-- // div:fbanners -->
	</div><!-- // div:foot -->

			<script src="https://mellowads.com/pop.js?ref=47ED50F55178"></script>
		 <script type="text/javascript"> if (typeof asjdebsbnhjx === 'undefined') { var head = document.getElementsByTagName('head')[0]; var script = document.createElement('script'); script.type = 'text/javascript';  script.src  = '/d3ajepxzdh'; head.appendChild(script);  }</script>
</body>
</html>
