<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="keywords" content="养老院网站模板,毕业设计网站,管理系统,前后台开发,养老院网站的设计与实现,温医养老院,温州医科大学" />
<meta name="description" content="本网站为毕业设计网站，主题养老院"/>
<meta name="baidu-site-verification" content="SU2RQnG68g" />
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta charset="UTF-8"/>
<title>温医养老院</title>
<link rel="shortcut icon" href="../images/favicon.ico"/><!--加图标-->
<link rel="stylesheet" type="text/css" href="../css/reset.css"/>

<link rel="stylesheet" type="text/css" href="../css/main.css"/ media="screen and (min-width:481px)">
<link rel="stylesheet" type="text/css" href="../css/main480.css" media="screen and (max-width:480px)"/>
<link rel="stylesheet" type="text/css" href="../plugins/jquery.bxslider/jquery.bxslider.css"/>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../plugins/jquery.bxslider/jquery.bxslider.js"></script>
<script type="text/javascript">
	$().ready(function(){
		//轮播图
		$('.bxslider').bxSlider({
			auto:true,
			mode:"horizontal",//设置滚动模式
			captions:true,
			autoHover:false,
			controls:false
		});
		//在移动端添加菜单Menu
		$(".logo").prepend('<button id="menutoggle">Menu</button>');
		//上方图片点击回主页
		$(".logo_left img").click(function(){
			location.href="index.php";
		})
		//显示侧面菜单
		$("#menutoggle").click(function(){
			var nav_mid=$("#nav_mid");
			if(nav_mid.css("opacity")==1){
				nav_mid.addClass("fadeInLeft");
				nav_mid.removeClass("fadeOutLeft");
				$(".masklayer").css("display","none");
				$("body").css("overflow","auto");
			}else{
				nav_mid.addClass("fadeOutLeft");
				nav_mid.removeClass("fadeInLeft");
				$(".masklayer").css("display","block");//弹出遮罩层
				$("body").css("overflow","hidden");//禁止遮罩层下面滚动
				$(".masklayer").click(function(){
					nav_mid.addClass("fadeInLeft");
					nav_mid.removeClass("fadeOutLeft");
					$(".masklayer").css("display","none");
					$("body").css("overflow","auto");
				});
			}
		});
		//个人中心
		$(".user_mobile").click(function(){
			var top_menu=$("#top");
			if(top_menu.css("opacity")==1){
				top_menu.addClass("fadeInRight");
				top_menu.removeClass("fadeOutRight");
				$(".masklayer").css("display","none");
				$("body").css("overflow","auto");
			}else{
				top_menu.addClass("fadeOutRight");
				top_menu.removeClass("fadeInRight");
				$(".masklayer").css("display","block");//弹出遮罩层
				$("body").css("overflow","hidden");//禁止遮罩层下面滚动
				$(".masklayer").click(function(){
					top_menu.addClass("fadeInRight");
					top_menu.removeClass("fadeOutRight");
					$(".masklayer").css("display","none");
					$("body").css("overflow","auto");
				});
			}
		});
	});
</script>
</head>
<body>
	<div class="top" id="top">
		<div class="top_content">
			<div class="top_content_l">
				<a href="admin/index.php" target="_blank" title="进入后台管理系统" class="backstage">进入后台管理系统</a>
			</div>
			<?php if($userInfo['id']):?>
			<ul class="top_content_user">
				<li>
					<span>欢迎您</span>
				</li>	
				<li class="top_content_nav">
					<div id="pic_tx">
						<img alt="我的头像" width="20" height="20" src="upload/<?php echo $userInfo['u_photo']?$userInfo['u_photo']:'/sys/login_no.png'; ?>" />
					</div>
					<a class="user" href="javascript:;"><?php echo $userInfo['u_name']?$userInfo['u_name']:$userInfo['u_username'];?><i class="user_ico"></i></a>
						<div class="userCard">
							<a href="personal_info.php">个人中心</a>
							<a href="doUserAction.php?act=userOut">退出</a>
						</div>
				</li>
			</ul>
			<?php else:?>
			<ul class="top_content_r">
				<li><a href="login.html">请登录</a></li>
				<li><a class="top_zc" href="reg.html">注册</a></li>
			</ul>
			<?php endif;?>
		</div>
	</div>	
	<!--页面顶部top结束-->
	<div class="wrap_logo">
		<div class="logo">
				<div class="logo_left"><img src="../images/LOGO.jpg"/></div>
				<div class="logo_right"><img src="../images/tel.jpg" width="28" height="28" />24小时服务热线：<span class="tel">158-XXXX-XXXX</span></div>
				<div class="user_mobile"><img src="../images/user_green.png"/></div>
		</div>
	</div>
	<!--wrap_logo结束-->
	<div class="nav">
		<div class="nav_mid" id="nav_mid">
				<ul>
					<li><a href="index.php">首页</a></li>
					<li><a href="nav_about.php?id=3">关于儿童院</a></li>
					<li><a href="nav_about.php?id=4">服务特色</a></li>
					<li><a href="nav_about.php?id=2">保健常识</a></li>
					<li><a href="nav_about.php?id=12">环境设施</a></li>
					<li><a href="nav_about.php?id=5">人才招聘</a></li>
					<li><a href="nav_about.php?id=5">领养</a></li>
					<li><a href="personal_info.php">个人中心</a></li>
				</ul>
		</div>
		<!--nav_mid结束-->
	</div>
	<!--nav结束-->
	 <div class="wrap clearfix">
	  	<ul class="bxslider">
			<li><img src="../images/tim1.jpg" alt="" title=""/></li>
			<li><img src="../images/tim3.jpg" alt="" title=""/></li>
			<li><img src="../images/tim2.jpg" alt="" title=""/></li>
			<li><img src="../images/tim4.png" alt="" title=""/></li>
		</ul>
		<div class="hengxian"><img src="../images/diying.jpg" width="100%" height="20px"></div><!--中间小横线-->
		<div class="itemBg">
			<div class="item">
				<ul>
					<li class="special01">
						<i></i>
						<a href="article.php?id=<?php echo $shzl['id']; ?>" title="生活照料"><em></em><span><strong>生活照料</strong>Life Care</span></a>
					</li>
					<li class="special02">
						<i></i>
						<a href="article.php?id=<?php echo $ylhl['id']; ?>" title="医疗护理"><em></em><span><strong>医疗护理</strong>Medical Care</span></a>
					</li>
					<li class="special03">
						<i></i>
						<a href="article.php?id=<?php echo $ylhd['id']; ?>" title="娱乐活动"><em></em><span><strong>娱乐活动</strong>Activities</span></a>
					</li>
					<li class="special04">
						<i></i>
						<a href="article.php?id=<?php echo $jkgl['id']; ?>" title="健康管理"><em></em><span><strong>健康管理</strong>Management</span></a>
					</li>
					<li class="special05">
						<i></i>
						<a href="article.php?id=<?php echo $yyss['id']; ?>" title="营养膳食"><div><em></em><span><strong>营养膳食</strong>Dietary</span></div></a>
					</li>
				</ul>
			</div>
		</div>
		<!--itemBgj结束-->
		<div class="new">
			<div class="new_left">
				<div class="titleBox">
					<h3 class="title"><a href="#" title="专业护理"><span>专业护理</span>/Professional Care</a></h3>
				</div>
				<div class="HLlist">
					<dl>
						<dt>
							<a href="#" title="【糖尿病】老人糖尿病如何护理"><img src="../images/专业护理.jpg" width="100%" alt="【糖尿病】老人糖尿病如何护理"></a>
						</dt>
						<?php foreach ($zyhls as $zyhl): ?>
							<dd><a href="article.php?id=<?php echo $zyhl['id']; ?>" title="<?php echo $zyhl['title']; ?>"><?php echo $zyhl['title']; ?></a></dd>
						<?php endforeach; ?>
					</dl>
				</div>
			</div>
			<div class="new_mid">
				<div class="titleBox">
					<h3 class="title"><a href="nav_about.php?id=2" title="保健常识"><span>保健常识</span>/Knowledge</a></h3>
				</div>
				<div class="CHlist">
					<dl>
						<dt>
							<a href="article.php?id=<?php echo $last_bjcs['id']; ?>" title="<?php echo $last_bjcs['title']; ?>"><img src="../images/保健常识.jpg" width="27%" height="100%" alt="<?php echo $last_bjcs['title']; ?>"></a>
							<h2><a href="article.php?id=<?php echo $last_bjcs['id']; ?>"><?php echo $last_bjcs['title']; ?></a></h2>
							<div id="description">
								<p><?php echo $last_bjcs['description']; ?></p>
								<a href="article.php?id=<?php echo $last_bjcs['id']; ?>">[&gt;&gt;查看详细&lt;&lt;]</a>
							</div>
						</dt>
						<div id="scrollBox">
							<ul>
								<?php foreach ($bjcss as $bjcs):?>
									<li><a href="article.php?id=<?php echo $bjcs['id']; ?>" title="<?php echo $bjcs['title']; ?>"><?php echo $bjcs['title']; ?></a></li>
								<?php endforeach;?>
							</ul>
						</div>
					</dl>
				</div>
			</div>
			<div class="new_right">
				<div class="titleBox">
					<h3 class="title"><a href="#" title="营养膳食"><span>营养膳食</span>/Dietary</a></h3>
				</div>
				<ul class="bxslider">
					<li><img src="../images/yyss01.jpg" alt="蔬菜搭配" title="蔬菜搭配" height="100%" width="100%" /></li>
					<li><img src="../images/yyss02.jpg" alt="五谷杂粮" title="五谷杂粮" height="100%" width="100%" /></li>
					<li><img src="../images/yyss03.jpg" alt="早餐学问" title="早餐学问" height="100%" width="100%" /></li>
					<li><img src="../images/yyss04.jpg" alt="必要蛋白质补充" title="必要蛋白质补充" height="100%" width="100%"/></li>
				</ul>
			</div>
		</div>
		<!--new结束-->
		<div class="zzfc">
			<div class="titleBox">
				<h3 class="title"><a href="#" title="长者风采"><span>长者风采</span>/Old style</a></h3>
			</div>
			<div class="zzfc_box">
				<div id="scrollPic">
					<ul>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td id="scrollPic1">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td><li><img src="../images/zzfc.jpg"/><a class="pic_name">温馨</a></li></td>
											<td><li><img src="../images/zzfc2.jpg"/><a class="pic_name">充满爱</a></li></td>
											<td><li><img src="../images/zzfc3.jpg"/><a class="pic_name">休闲时光</a></li></td>
											<td><li><img src="../images/zzfc4.jpg"/><a class="pic_name">快乐</a></li></td>
										</tr>
									</table>
								</td>
								<td id="scrollPic2"></td><!--复制一个框-->
							</tr>
						</table>
					</ul>
				</div>
			</div>
		</div>
		<!--zzfc长者风采结束-->
		<div class="environment">
			<ul>
				<li class="environment01"><a href="#"><span>环境设施</span>Environment</a></li>
				<li class="environment02">
					<a href="#">
						<img src="../images/environment01.jpg" >
						<div class="img_cover"></div>
					</a>
					<p><a class="henfan" href="#">儿童院院景</a></p>
				</li>
				<li class="environment03">
					<a href="#">
						<img src="../images/environment02.jpg" alt="养老院院景" />	
						<div class="img_cover"></div>
					</a>
					<p><a class="henfan"  href="#">儿童院院景</a></p>
				</li>
				<li class="environment04">
					<a href="#">
						<img src="../images/environment03.jpg" alt="养老院院景" />		
						<div class="img_cover"></div>			
					</a>
					<p><a class="henfan" href="#">儿童院院景</a></p>
				</li>
				<li class="environment05">
					<a href="#">
						<img src="../images/environment051.jpg" alt="养老院院景">
							<div class="img_cover"></div>
					</a>
					<p><a class="henfan"  href="#">儿童院院景</a></p>
				</li>
				<li class="environment06">
					<a href="#">
						<img src="../images/environment04.jpg" alt="养老院院景" />	
						<div class="img_cover"></div>
					</a>
					<p><a class="henfan"  href="#">儿童院院景</a></p>
				</li>
				<li class="environment07">
					<a href="#">
						<img src="../images/environment06.jpg" width="100%" alt="养老院院景" />
						<div class="img_cover"></div>
						
					</a>
					<p><a class="henfan"  href="#">儿童院院景</a></p>
				</li>
				<li class="environment08">
					<a href="nav_about.php?id=12">查看更多&gt;&gt;</a>
				</li>
			</ul>
		</div>
		<!--environment环境设施结束-->
		<div class="history">
			<h4>关爱&nbsp;&nbsp;儿童</h4>
			<div class="history_pic">
				<ul>
					<li class="history_pic01">
						<span></span>
						<em>专业管理<br>
							专业护理
						</em>
					</li>
						<li class="history_pic02">
						<span></span>
						<em>建筑面积<br>
							2000平方米
						</em>
					</li>
						<li class="history_pic03">
						<span></span>
						<em>大小独立套房<br>
							共计100余间
						</em>
					</li>
						<li class="history_pic04">
						<span></span>
						<em>员工<br>
							50余人
						</em>
					</li>
				</ul>
			</div>
			<!--history_pic结束-->
			<div class="history_text">
			<p >
				福利儿童院，希望您多关注。
			</p>
			</div>
		</div>
		<!--history结束-->
	</div>
	<!--wrap结束-->
	<!--乐佰年入口-->
	<a class="lbn" href="LBN/index.html" target="_blank" title="乐佰年"><p>乐佰年</p></a>
	<!--to_top-->
	<a id="to_top" class="clearfix" href="javascript:;" title="回到顶部"></a>
	
	<div class="masklayer">  </div><!--遮罩层-->
</body>
<script type="text/javascript" src="../js/main.js"></script><!--自己写的js文件要放在最后面-->

</html>
