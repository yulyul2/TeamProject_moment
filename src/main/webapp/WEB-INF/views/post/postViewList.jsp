<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String uiPath = "http://yul2study.dothome.co.kr";
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>�Խù� �󼼺���</title>
	<!-- css, javascript
	* �Խù� �󼼺��� : post.css, post.js
	-->
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.min.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/libs/bxslider/4.2.12/jquery.bxslider.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="<%= uiPath %>/css/post.css" media="all" />
	<script type="text/javascript" src="<%= uiPath %>/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/mCustomScrollbar/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/libs/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/common.js"></script>
	<script type="text/javascript" src="<%= uiPath %>/js/post.js"></script>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");

%>
<!-- �̹��� ������¡ ó��
	* logo �̹��� ���� 
	* ��� �̹����� �θ𿡴� class 'image-parent' �߰�
	* ��� �̹��� �ڽſ��Դ� class 'image-load' �߰� 
-->
<!-- �˾�
	* ȣ���� �˾� id ���� click �Ǵ� ��ư data-name ���� �����ϰ� �� 
-->
<div id="wrap">
	<div id="header-wrap">
	<header class="inner clearfix">
		<h1 class="logo">
			<!-- [Dev] ������ ���� : ���� -->
			<a href="/board/main"><img src="<%= uiPath %>/img/logo.png" alt="moment"></a>
		</h1>
		<div class="search-input-wrap has-comm-layer">
			<h2 class="blind">�˻��ϱ�</h2>
			<div class="search-input">
				<!-- [Dev] �˻� ��� ���� -->
				<form action="javascript:void(0)" method="post" name="searchForm" >
					<fieldset>
						<legend class="blind">�˻�</legend>
						<input type="text" placeholder="�˻��ϱ�" class="input-search">
						<button type="submit" class="button-search sp-button button-comm-layer-open"><span class="blind">�˻��ϱ�</span></button>
					</fieldset>
				</form>
			</div>
			<!-- ���̾� : �˻� -->
			<div class="layer-search comm-layer">
				<h3 class="blind">�˻� ���̾�</h3>
				<button type="button" class="button-search-close sp-button button-comm-layer-close"><span class="blind">�˻� ���̾� �ݱ�</span></button>
				<div class="layer-inner">
					<div class="list-area">
						<p class="title">�ֱ� �˻� ����</p>
						<ul class="list comm-list">
							<li>
								<!-- [Dev] ������ ���� : ȸ�� �� ���� -->
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
									</span>
									<span class="profile-id">Lee_sy</span>
								</a>
								<!-- [Dev] �ȷο� ��� ���� -->
								<button type="button" class="button-follow">�ȷο�</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
									</span>
									<span class="profile-id">kim_hw</span>
								</a>
								<button type="button" class="button-follow">�ȷο�</button>
							</li>
							<li>
								<a href="javascript:void(0)">
									<span class="profile-img image-parent">
										<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
									</span>
									<span class="profile-id">Park_hg</span>
								</a>
								<button type="button" class="button-follow">�ȷο�</button>
							</li>
						</ul>
						<p class="title">�ֱ� �˻� ����</p>
						<p class="message">�ֱ� �˻� ������ �����ϴ�.</p>
					</div>
					<button type="button" class="button-search-delete comm-list-btn">�˻����� ����</button>
				</div>
			</div>
		</div>
		<div class="all-menu-wrap parent-toggle">
			<button type="button" class="button-all-menu sp-button button-parent-toggle"><span class="blind">��ü �޴�</span></button>
			<div class="layer-all-menu comm-layer simple">
				<h3 class="blind">��ü �޴� ���̾�</h3>
				<div class="layer-inner">
					<ul class="list">
					<!-- ������ ���� -->
						<!-- [Dev] ȸ������ �������� ���� -->
						<li><a href="javascript:void(0)">ȸ������</a></li>
						<!-- [Dev] �������� �ۼ� �������� ���� -->
						<li><a href="javascript:void(0)">�������� �ۼ�</a></li>
					<!-- ����� ���� -->
						<!-- [Dev] �������� �������� ���� -->
						<li><a href="javascript:void(0)">��������</a></li>
						<!-- [Dev] �Խù� �� �������� ���� -->
						<li><a href="javascript:void(0)">�Խù� ����</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
</div><!-- // header-wrap -->
	<div id="section-wrap" class="inner clearfix">
		<section class="side-section clearfix full-height">
			<article class="profile">
				<h2 class="blind">������</h2>
				<!-- [Dev] ������ ���� : ȸ�� �� ���� -->
				<a href="javascript:void(0)" class="clearfix">
					<div class="image-area">
						<span class="image image-parent">
							<!-- [Dev] Default ������ �̹��� ��� : ./img/profile/default.png (�ٸ� �̹����� jpg) 
								�⺻ �̹����� ��� class 'default' �߰� / �� �ܿ� ����
							-->
							<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load default">
						</span>
					</div>
					<div class="info-area">
						<p class="my-id"><%=id %></p>
						<p class="my-name">������</p>
					</div>
				</a>
				<!-- [Dev] ģ�� �Խù��� ��� ����Ǵ� ��ư : �ȷο� ��� ���� (�ȷο� ��ư ������ "�ȷο�" -> "�ȷ���" ���� �ؽ�Ʈ ����) -->
				<button type="button" class="button-follow"><span>�ȷο�</span></button>
				<!-- [Dev] �� �Խù��� ��� ����Ǵ� ��ư : �� ���� ���� �������� ����  -->
				<a href="javascript:void(0)" class="button-myinfo"><span>�� ���� ����</span></a>
				<div class="intro-area">
					<div class="count-box">
						<!-- [Dev] �Խù��� �� -->
						<span class="post">�Խù� <span class="count">55</span>��</span>
						<!-- [Dev] "����" �ȷο��� ����� �� -->
						<span class="follwer">�ȷο� <span class="count">122</span>��</span>
						<!-- [Dev] "����" �ȷο��� ����� �� -->
						<span class="follwing">�ȷ��� <span class="count">136</span>��</span>
					</div>
					<div class="intro-box">
						<!-- [Dev] �Ұ��� : �⺻���δ� "�ȳ��ϼ���." �� ���� / �� ���� ���� ���������� ���� ����
							disabled : ��Ȱ��ȭ (���� �Ұ�)
						-->
						<textarea name="myIntro" disabled>�ȳ��ϼ���.</textarea>
					</div>
				</div>
			</article>
		</section>
		<section class="main-section clearfix">
			<div class="comm-tab-wrap">
				<ul class="tab-menu">
					<!-- li : class 'on' �߰�/���� / �ϸ�ũ�� ��ũ ���� -->
					<li class="tab-post on">�Խù�</li>
					<li class="tab-bookmark"><a href="postViewBookmark.html">�ϸ�ũ</a></li>
				</ul>
				<!-- [Dev] �Խù� : �ֽ� ����� �Խù����� �� �������� 10���� ���� -->
				<article class="post-list">
					<h2 class="blind">�Խù� ����Ʈ</h2>
					<ul class="list">
						<li class="image-parent">
							<!-- [Dev] Ŭ�� �� �Խù� �� �˾� -->
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_01.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
									<!-- [Dev] ���ƿ�, ��� ���� ������ -->
										<div class="like">
											<span class="count sp-button">87</span>
										</div>
										<div class="comment">
											<span class="count sp-button">2</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_02.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">888</span>
										</div>
										<div class="comment">
											<span class="count sp-button">25</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_03.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">71</span>
										</div>
										<div class="comment">
											<span class="count sp-button">53</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_04.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">449</span>
										</div>
										<div class="comment">
											<span class="count sp-button">27</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_05.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">72</span>
										</div>
										<div class="comment">
											<span class="count sp-button">3</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_06.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">0</span>
										</div>
										<div class="comment">
											<span class="count sp-button">0</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_07.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">645</span>
										</div>
										<div class="comment">
											<span class="count sp-button">33</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_08.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">77</span>
										</div>
										<div class="comment">
											<span class="count sp-button">28</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_09.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">335</span>
										</div>
										<div class="comment">
											<span class="count sp-button">72</span>
										</div>
									</div>
								</div>
							</button>
						</li>
						<li class="image-parent">
							<button type="button" class="button-comm-popup-open" data-name="popup-postView">
								<img src="<%= uiPath %>/img/photo/sample_b_10.jpg" alt="�Խù� �����" class="image-load">
								<div class="over-box table-parent">
									<div class="box table-child">
										<div class="like">
											<span class="count sp-button">65</span>
										</div>
										<div class="comment">
											<span class="count sp-button">8</span>
										</div>
									</div>
								</div>
							</button>
						</li>
					</ul>
					<!-- [Dev] �Խù� 10�� �̻��� ��� ����¡ ó�� -->
					<div class="pagination">
						<div class="paging clearfix">
							<button type="button" class="button-paging-prev sp-button"><span class="blind">���� ������</span></button>
							<ul class="page-list">
								<!-- [Dev] ���� �������� class 'on' �߰� -->
								<li class="on"><a href="javascript:void(0)">1</a></li>
								<li><a href="javascript:void(0)">2</a></li>
								<li><a href="javascript:void(0)">3</a></li>
								<li><a href="javascript:void(0)">4</a></li>
								<li><a href="javascript:void(0)">5</a></li>
							</ul>
							<button type="button" class="button-paging-next sp-button"><span class="blind">���� ������</span></button>
						</div>
					</div>
				</article>
			</div>
		</section>
	</div><!-- // section-wrap -->
	<div id="footer-wrap">
	<footer class="inner">Copyright &copy; 2021 moment</footer>
</div><!-- // footer-wrap -->
</div>
<!-- �˾� - ���� navi 1. ���ã�� ģ�� : ��ü ģ�� ��� �� ���ã�� ģ���� ������ ���� -->
<div class="comm-popup" id="popup-naviBookmark">
	<div class="popup-inner">
		<button type="button" class="sp-button button-comm-popup-close"><span class="blind">���ã�� ģ�� �˾� �ݱ�</span></button>
		<h3>ģ����� ��ü ����</h3>
		<ul class="list-inner comm-list">
			<li>
				<!-- [Dev] ������ ���� : ȸ�� �� ���� -->
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
				<!-- [Dev] ���ã�� ��� ���� -->
				<button type="button" class="button-bookmark sp-button button-toggle on"><span class="blind">���ã��</span></button>
			</li> 
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">kim_hw</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">���ã��</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">���ã��</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">���ã��</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">bubblyJang</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">���ã��</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">���ã��</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">���ã��</span></button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">bubblyJang</span>
				</a>
				<button type="button" class="button-bookmark sp-button button-toggle"><span class="blind">���ã��</span></button>
			</li>
		</ul>
	</div>
</div>

<!-- �˾� - ���� navi 2. ��õģ�� ��� : ��õģ�� �������� 20�� ���� -->
<div class="comm-popup" id="popup-naviRecommend">
	<div class="popup-inner">
		<button type="button" class="sp-button button-comm-popup-close"><span class="blind">��õģ�� ��� �˾� �ݱ�</span></button>
		<h3>��õģ�� ��ü ����</h3>
		<ul class="list-inner comm-list">
			<li>
				<!-- [Dev] ������ ���� : ȸ�� �� ���� -->
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Jang_yr</span>
				</a>
				<!-- [Dev] �ȷο� ��� ���� -->
				<button type="button" class="button-follow">�ȷο�</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">kim_hw</span>
				</a>
				<button type="button" class="button-follow">�ȷο�</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Park_hg</span>
				</a>
				<button type="button" class="button-follow">�ȷο�</button>
			</li>
			<li>
				<a href="javascript:void(0)">
					<span class="profile-img image-parent">
						<img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load">
					</span>
					<span class="profile-id">Lee_sy</span>
				</a>
				<button type="button" class="button-follow">�ȷο�</button>
			</li>
		</ul>
	</div>
</div>

<!-- �˾� - ���� navi 3. �������� : �������׿� ��ϵ� ��ü ����� �ֽż����� ���� -->
<div class="comm-popup" id="popup-naviNotice">
	<div class="popup-inner">
		<button type="button" class="sp-button button-comm-popup-close"><span class="blind">�������� �˾� �ݱ�</span></button>
		<h3 class="bg-none">�������� ��ü ����</h3>
		<div class="content-inner comm-toggle-wrap">
			<dl class="toggle-area">
				<dt class="button-comm-toggle">
					<span class="title">���� ����Ʈ ���� ����</span><span class="date">2021.07.07</span>
				</dt>
				<dd class="toggle-content">
					���� 14:00 - 17:00 ���� 3�ð� ����Ʈ ���� �����Դϴ�.<br>
					����Ʈ �̿뿡 ���� ��Ź�帳�ϴ�.
				</dd>
			</dl>
			<dl class="toggle-area">
				<dt class="button-comm-toggle">
					<span class="title">�Խù� ��� ��å ���� �ȳ��帳�ϴ�.</span><span class="date">2021.07.03</span>
				</dt>
				<dd class="toggle-content">
					�����Դϴ�.
				</dd>
			</dl>
			<dl class="toggle-area">
				<dt class="button-comm-toggle">
					<span class="title">IE ������ ������ ����˴ϴ�.</span><span class="date">2021.06.09</span>
				</dt>
				<dd class="toggle-content">
					�����Դϴ�.
				</dd>
			</dl>
		</div>
		<!-- [Dev] �������� �Խñ� 3�� �̻��� ��� ����¡ ó�� -->
		<div class="pagination">
			<div class="paging clearfix">
				<button type="button" class="button-paging-prev sp-button"><span class="blind">���� ������</span></button>
				<ul class="page-list">
					<!-- [Dev] ���� �������� class 'on' �߰� -->
					<li class="on"><a href="javascript:void(0)">1</a></li>
					<li><a href="javascript:void(0)">2</a></li>
					<li><a href="javascript:void(0)">3</a></li>
					<li><a href="javascript:void(0)">4</a></li>
					<li><a href="javascript:void(0)">5</a></li>
				</ul>
				<button type="button" class="button-paging-next sp-button"><span class="blind">���� ������</span></button>
			</div>
		</div>
	</div>
</div>

<!-- �˾� - �Խù� �� : ����Ʈ���� Ŭ���� �Խù��� ������ ������ -->
<div class="comm-popup" id="popup-postView">
	<div class="popup-inner">
		<button type="button" class="button-comm-popup-close"><span class="blind">�Խù� �� �˾� �ݱ�</span></button>
		<h3 class="blind">�Խù� ��</h3>
		<div class="post-wrap comm-post parent-toggle">
			<div class="head-area clearfix">
				<div class="profile">
					<!-- [Dev] Default ������ �̹��� ��� : ./img/profile/default.png (�ٸ� �̹����� jpg) -->
					<span class="profile-img image-parent"><img src="<%= uiPath %>/img/profile/default.png" alt="������ �̹���" class="image-load"></span>
					<span class="profile-id">yulyul2</span>
				</div>
				<div class="button">
					<!-- [Dev] �Խù� ���ã�� ��� ���� : ȸ�� �� ���������� ���� -->
					<button type="button" class="button-bookmark sp-button button-toggle on"><span class="blind">���ã��</span></button>
					<!-- [Dev] ���̾� ȣ�� : �Խù� �޴� -->
					<button type="button" class="button-menu sp-button button-parent-toggle"><span class="blind">�Խù� �޴�</span></button>
				</div>
				<!-- ���̾� : �Խù� �޴� 1 -->
				<div class="layer-menu comm-layer simple">
					<h3 class="blind">�Խù� �޴� ���̾�</h3>
					<div class="layer-inner">
						<ul class="list">
							<!-- [Dev] ������ ���� : �Խù� ���� (���� or ������ ���������� ����) -->
							<li><a href="javascript:void(0)" class="button-edit">�����ϱ�</a></li>
							<!-- [Dev] �Խù� ���� ��� ���� (���� or ������ ���������� ����) -->
							<li><button type="button" class="button-delete">�����ϱ�</button></li>
							<!-- [Dev] �Խù� ���� ��� ���� -->
							<li><button type="button" class="button-share">�����ϱ�</button></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="photo-area image-parent">
				<!-- [Dev] �Խù� ���� ��� : ./img/photo/sample_s_01.jpg -->
				<img src="<%= uiPath %>/img/photo/sample_b_01.jpg" alt="�Խù� �̹���" class="image-load">
			</div>
			<div class="info-area">
				<div class="post-info">
					<!-- [Dev] ���ƿ� ��� ����, ���� ī��Ʈ -->
					<button type="button" class="button-like button-toggle on">
						<span class="icon sp-button"><span class="blind">���ƿ�</span></span>
						<span class="text">���ƿ� <span class="count">99</span>��</span>
					</button>
					<!-- [Dev] ��� ���� ī��Ʈ -->
					<button type="button" class="button-comment">
						<span class="icon sp-button"><span class="blind">���</span></span>
						<span class="text">���  <span class="count">8</span>��</span>
					</button>
				</div>
				<div class="post-content">
					<span class="id">yulyul2</span>
					<p class="content">���� ���� ���� ����</p>
				</div>
				<div class="post-comment">
					<!-- [Dev] ��� ��ü �����ֱ� -->
					<ul class="comment-list short-bar">
						<li>
							<span class="id">bubblyJang</span>
							<span class="comment">���� ���??</span>
						</li>
						<li>
							<span class="id">happyhappy</span>
							<span class="comment">���� ���� ���ƿ�~</span>
						</li>
						<li>
							<span class="id">hihi_o_o</span>
							<span class="comment">���</span>
						</li>
						<li>
							<span class="id">abc_jjj</span>
							<span class="comment">���� ��¥ �����̾� �Ф�</span>
						</li>
						<li>
							<span class="id">qwer1234</span>
							<span class="comment">�����~~</span>
						</li>
						<li>
							<span class="id">pd_aaa</span>
							<span class="comment">��������</span>
						</li>
						<li>
							<span class="id">hello</span>
							<span class="comment">�ȳ�ȳ�</span>
						</li>
						<li>
							<span class="id">Jang_yr</span>
							<span class="comment">��¥ ����� �ʹ�!!</span>
						</li>
					</ul>
					<div class="comment-write">
						<form action="javascript:void(0)" metohd="post" name="commentForm">
							<fieldset>
								<legend class="blind">��� �ۼ�</legend>
								<input type="text" placeholder="��� �ۼ�" class="input-comment">
								<button type="submit" class="button-comment sp-button"><span class="blind">��� �ۼ��ϱ�</span></button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div></body>
</html>