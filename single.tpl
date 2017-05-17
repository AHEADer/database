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

    <h2><span>详细信息</span>&nbsp;</h2>
% for item in bki:
<div id="content">

			<div id="sky-right">
				 <iframe src="//thepiratebay.org/static/ads/exo_na/sky2.html" width="160" height="600" frameborder="0" scrolling="no"></iframe>
			</div>
	<div id="main-content">

			 <iframe src="//thepiratebay.org/static/ads/exo_na/center.html" id="sky-center" width="728" height="90" frameborder="0" scrolling="no"></iframe>
		<div>
<div id="detailsouterframe">
<div id="response"></div>
<div id="message"></div>
<div id="detailsframe">
<div id="title">
        {{item[1]}}</div>

    <div id='details'>
        <dl class='col1'>
            <dt>类型:</dt>
            <dd><a href="/browse/601" title="More from this category">{{item[8]}}</a></dd>

        <dt>剩余书本:</dt>
            <dd><a href="javascript:void(0);" title="Files" onclick="if( filelist &lt; 1 ) { new Ajax.Updater('filelistContainer', '/ajax_details_filelist.php', { method: 'get', parameters: 'id=14645977' } ); filelist=1; }; toggleFilelist(); return false;">{{item[7] - item[11]}}</a></dd>

            <dt>出版社:</dt>
            <dd>{{item[4]}}</dd>


                                        <dt>出版社地址:</dt>
                        <dd>{{item[5]}}</dd>
        </dl>
        <dl class='col2'>
            <dt>出版时间:</dt>
            <dd>{{item[3]}}</dd>
            <dt>作者:</dt>
            <dd><a href="/author/{{item[2]}}/" title="{{item[2]}}">{{item[2]}}</a>&nbsp;</dd>
            <dt>热度:</dt>
            <dd>{{item[10]}}</dd>

            <dt>页数:</dt>
            <dd>{{item[6]}}</dd>

            <dt>Comments</dt>
            <dd><span id='NumComments'>0</span>
                &nbsp;            </dd>

            <br />
            <dt>Info Hash:</dt><dd></dd>
            FC4967B830B8285503AE6D93BA8BE4C3179E354F        </dl>
            <div id="CommentDiv" style="display:none;">
        <form method="post" id="commentsform" name="commentsform" onsubmit="new Ajax.Updater('NumComments', '/ajax_post_comment.php', {evalScripts:true, asynchronous:true, parameters:Form.serialize(this)}); return false;" action="/ajax_post_comment.php">
            <p class="info">
                <textarea name="add_comment" id="add_comment" rows="8" cols="50"></textarea><br/>
                <input type="hidden" name="id" value="14645977"/>
                <input type="submit" value="Submit" /><input type="button" value="Hide" onclick="document.getElementById('CommentDiv').style.display = 'none'" />
            </p>
        </form>
    </div>
    <br/>
    <br/>
    <div id="social">
    </div>
    <br /><br />    <div>
        <div class="download">
  		          <a style="background-image: url('//thepiratebay.org/static/img/icons/icon-magnet.gif');" href="magnet:?xt=urn:btih:fc4967b830b8285503ae6d93ba8be4c3179e354f&dn=Kali+Linux+-Wireless+Penetration+Testing+Beginner%27s+Guide+%282015%29&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Get this torrent">&nbsp;Get this torrent</a>

        </div>
        <div style="clear:both;">(Problems with magnets links are fixed by upgrading your <a href="http://www.bitlord.com" target="_blank">torrent client</a>!)</div>
        <div class="nfo">
            <pre>{{item[9]}}
</pre>
        </div>
        <br/>
        <div class="download">
            <a style="background-image: url('//thepiratebay.org/static/img/icons/icon-magnet.gif');" href="magnet:?xt=urn:btih:fc4967b830b8285503ae6d93ba8be4c3179e354f&dn=Kali+Linux+-Wireless+Penetration+Testing+Beginner%27s+Guide+%282015%29&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969" title="Get this torrent">&nbsp;Get this torrent</a>
              </div>
            <div id="filelistContainer" style="display:none;">
                <a id="show"></a>
            </div>
            <div id="comments"></div>            </div>
        </div>
    </div>

			<div class="ads" id="sky-banner">
				 <iframe src="//thepiratebay.org/static/ads/exo_na/sky1.html" width="120" height="600" frameborder="0" scrolling="no"></iframe>
			</div>
			<script type="text/javascript" src="//thepiratebay.org/static/ads/ad-scroll.js"></script>
	</div>
</div><!-- //div:content -->
% end

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
