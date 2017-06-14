<!DOCTYPE html>
<html lang="en">
<head>
    <title>图书管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="google-site-verification" content="bERYeomIC5eBWlPLupPPYPYGA9GvAUKzFHh3WIw24Xs" />
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Search The Bay" />
    <link rel="stylesheet" type="text/css" href="/static/css/pirate6.css"/>
    <link rel="canonical" href="//thepiratebay.org/search//0/99/200" />
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
    <meta name="description" content="Search for and download any torrent from the pirate bay using search query . Direct download via magnet link."/>
    <meta name="keywords" content=" direct download torrent magnet tpb piratebay search"/>

    <script language="javascript" type="text/javascript">if (top.location != self.location) {top.location.replace(self.location);}</script>
</head>

<body>
    <div id="header">

        <form method="get" id="q" action="/s/">
            <a href="/" class="img"><img src="/static/img/out.png" id="TPBlogo" alt="The Bay" /></a>
            <b><a href="/" title="Search Books">搜索</a></b>&nbsp;&nbsp;|&nbsp;
 <a href="/add" title="Music">添加</a>&nbsp;&nbsp;|&nbsp;
 <a href="/top" title="Top 100">Top 10</a>
            <br /><input type="search" class="inputbox" title="Search" name="q" placeholder="Search here..." value="" /><input value="Search" type="submit" class="submitbutton"  /><br />
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
    <h2><span>详细信息</span>&nbsp;</h2>











<div id="content">
	<div id="main-content">







    % for item in bki:
<form name="modify" method="post" action="/user/modify/{{item[0]}}">

<div id="detailsouterframe">
<div id="response"></div>
<div id="message"></div>
<div id="detailsframe">
<div id="title">
<input name="title" value="{{item[1]}}" autofocus required style="width:300px">
</div>

    <div id='details'>
        <dl class='col1'>
            <dt>状态:</dt>
            <dd><select name="status">
                <option value="1">正常</option>
                <option value="0">欠费</option>
            </select></dd>

        <dt>权限:</dt>
            <dd><select name="is_admin">
                <option value="0">普通用户</option>
                <option value="1">管理员</option>
            </select></dd>

            <dt>注销:</dt>
            <dd><select name="cancel">
                <option value="0">未注销</option>
                <option value="1">注销</option>
            </select></dd>


            <dt>余额:</dt>
            <dd><input name="fine" value="{{item[6]}}" autofocus required style="width:100px"></dd>
            <dt>借书上限:</dt>
            <dd><input name="b_amount" value="{{item[7]}}" autofocus required style="width:100px"></dd>
        </dl>
    <br/>
    <br/>
    <div id="social">
    </div>
    <br /><br />    <div>

        <br/>
        <div class="download" style="text-align:center">
            <input value="确定" type="submit" class="submitbutton" >
            </div>
            <div id="comments"></div>            </div>
        </div>
    </div>

	</div>
</form>
% end


<h3 align="center">借书清单</h3>

    <div id="SearchResults">
<table id="searchResult">
	<thead id="tableHead">
		<tr class="header">
			<th><a title="Order by Type">类型</a></th>
			<th><div class="sortby"><a href="" title="Order by Name">书籍</a>
			<th><abbr title="Seeders"><a href="" title="Order by Seeders">作者</a></abbr></th>
			<th><abbr title="Leechers"><a href="" title="Order by Leechers">热度</a></abbr></th>
            <th><abbr title="Renew"><a href="" title="Order by Leechers"></a></abbr></th>
            <th><abbr title="Return"><a href="" title="Order by Leechers"></a></abbr></th>
            <th><abbr title="expired"><a href="" title="Order by Leechers"></a></abbr></th>
            <th><abbr title="expired"><a href="" title="Order by Leechers"></a></abbr></th>

		</tr>
	</thead>

	% for item in b_list:
    <tr>
		<td class="vertTh">
			<center>
				<a href="/browse/200" title="More from this category">{{item[2]}}</a><br />
			</center>
		</td>
		<td>
<div class="detName">			<a href="/book/{{item[8]}}" class="detLink" title="{{item[0]}}">{{item[0]}}</a>
</div>
<a href="#"></a><a href="/user/y7"></a>
			<font class="detDesc">Published {{item[3]}}, 出版社 {{item[4]}}&nbsp;页数<a class="detDesc" href="/user/y7/" title="Browse y7">{{item[6]}}</a></font>
		</td>
		<td align="right">{{item[1]}}</td>
		<td align="right">{{item[7]}}</td>
        <td align="right"><a href="/user/{{id}}/renew/{{item[10]}}">续借</a></td>
        <td align="right"><a href="/user/{{id}}/return/{{item[10]}}">还书</a></td>
        <td align="right"><a href="/user/{{id}}/destory/{{item[10]}}">损坏</a></td>
        <td align="right">{{item[-1]}}</td>
</tr>
	% end

</table>
        </div>
        </div><!-- //div:content -->
</div>
<div align="center">1&nbsp;<a href="/search//1/7/200/">2</a>&nbsp;<a href="/search//2/7/200/">3</a>&nbsp;<a href="/search//1/7/200/"><img src="/static/img/next.gif" border="0" alt="Next"/></a>&nbsp;
</div>
	</div></div></div><!-- //div:content -->

























	<div id="foot" style="text-align:center;margin-top:1em;">
				<p>
			<a href="/login" title="Login">Login</a> |
			<a href="/register" title="Register">Register</a> |
			<a href="/account" title="Account">Account</a> |
			<a href="/logout" title="Logout">Logout</a> |
			<a href="/management" title="Management">Management</a>
			<br />
			<!--<a href="/contact" title="Contact us">Contact us</a> |-->
			<a href="/returnbyid" title="Returnbyid">Return books</a> |
			<a href="http://uj3wazyk5u4hnvtk.onion" title="TOR">TOR</a> |
			<a href="/doodles" title="Doodles">Doodles</a> |
			<a href="http://pirates-forum.org/" title="Forum" target="_blank">Forum</a>
			<br />
		</p>

		<div id="fbanners">
			<a href="/rss" class="rss" title="RSS"><img src="/static/img/rss_small.gif" alt="RSS" /></a>
		</div><!-- // div:fbanners -->
	</div><!-- // div:foot -->

			<script src="https://mellowads.com/pop.js?ref=47ED50F55178"></script>
		 <script type="text/javascript"> if (typeof asjdebsbnhjx === 'undefined') { var head = document.getElementsByTagName('head')[0]; var script = document.createElement('script'); script.type = 'text/javascript';  script.src  = '/d3ajepxzdh'; head.appendChild(script);  }</script>
</body>
</html>
