package web.admin;

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">
<%@taglib uri="http://struts.apache.org/tags-html"
          prefix="html" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>
			Admin | Category
		</title>
		<link href="/Dexter/_stylesheets/global.css" rel="stylesheet" type="text/css">
        <link href="/Dexter/_stylesheets/power.css" rel="stylesheet" type="text/css">
        <link href="/Dexter/_stylesheets/admin.css" rel="stylesheet" type="text/css">
        <link rel="icon" type="image/png" href="/Dexter/_images/FavIcon.png">
	</head>
	<body>
		<div class="container" id="container">
			<div class="header" id="header">
                <div class="toplinks" id="toplinks">
                    <div class="topleft">
                        <a href="/Dexter/web/user/clear/classic.jsp">
                            <img src="/Dexter/_images/home.png" width="20" height="20" alt="Home">
                        </a>
                    </div>
                    <table class="toptable" summary="this table contains links">
                        <tr>
                            <td>
                                <img src="/Dexter/_images/ProfilePic.jpg" alt="ProfilePic" width="16" height="16">
                            </td>
                            <td>
                                <a class="header toplinks" href="/Dexter/actions/logout.do">Signout</a>
                                <a class="header toplinks" href="/Dexter/actions/idexter.do?page=1">iDexter</a>
                                <a class="header toplinks multiwordlinks" href="/Dexter/actions/myprofile.do">My Profile</a>
                                <a class="header toplinks multiwordlinks" href="/Dexter/actions/myfriends.do">My Friends</a>
                                <a class="header toplinks" href="/Dexter/web/user/clear/submit.jsp">Submit</a>
                                <span class="toplinks">Settings</span>
                                <a class="header toplinks" href="/Dexter/web/user/clear/about.jsp">About</a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="sublinks">
                    <div class="categories">
                        <div class="block">
                            <a class="block header multiwordlinks" href="/Dexter/web/user/ssl/settings.jsp">My Settings</a>
                            <a class="block header multiwordlinks" href="/Dexter/web/user/ssl/editprofile.jsp">Edit Profile</a>
                            <span class="multiwordlinks">Admin Actions</span>
                            <a class="block header multiwordlinks" href="/Dexter/web/mod/index.jsp">Moderator Actions</a>
                            <a id="disabledialoginvoker" class="block header multiwordlinks" href="#">Disable Account</a>
                            <a id="deletedialoginvoker" class="block header multiwordlinks" href="#">Delete Account</a>
                        </div>
                    </div>
                </div>
            </div>
			<div class="content" id="content">
				<div class="main">
					<div class="rightpanel" id="rightpanel">
                        <div class="contentheading">
                            <h3>Dashboard</h3>
                        </div>
                        <div class="dynamicdivs" id="dashboard">
                            <ul class="side-menu" id="adminlinks">
                               <li>
                                    <a href="/Dexter/web/admin/index.jsp" >Admin Home</a>
                                </li>
                                <li>
                                    <a href="/Dexter/actions/admin/channel.do">Channel</a>
                                </li>
                                <li>
                                    <a href="/Dexter/actions/admin/category.do" class="current">Category</a>
                                </li>
                                <li>
                                    <a href="/Dexter/actions/admin/user.do">User</a>
                                </li>
                                <li>
                                    <a href="/Dexter/actions/admin/moderator.do">Moderator</a>
                                </li>
                                <li>
                                    <a href="/Dexter/actions/admin/im.do">Instant Messaging</a>
                                </li>
                                <li>
                                    <a href="/Dexter/actions/admin/visibilityvalidation.do">Visibility Control</a>
                                </li>
                            </ul>
                        </div>
                    </div>
					<div class="leftpanel" id="leftcolumn">
						<div class="rightcolumn">
							<div class="contentheading">
								<h3>
									Remove Category
								</h3>
							</div>
							<div class="dynamicdivs" id="category">
								<div class="centeradmin">

                                    <html:form action="/actions/admin/category">
                                        <span class="center">
                                            <h4 class="success">${CategoryFormBean.removeSuccess}</h4>
                                            <h4 class="error">${CategoryFormBean.removeError}</h4><br>
                                        </span>
                                            <div class="fleft">
                                                <h3 class="headinginline">Select Category:</h3>
                                            </div>
                                            <div class="fright">
                                                <html:select property="removeCategory" styleClass="input">
                                                    <html:optionsCollection name="CategoryBean" value="categoryName" label="categoryName"/>
                                                </html:select>
                                                <html:submit value="Remove" styleClass="input"></html:submit>
                                            </div>
                                            <div class="clear"></div>
                                        </html:form>
                                </div>
							</div>
						</div>
						<div class="leftcolumn">
							<div class="contentheading">
								<h3>
									Add Category
								</h3>
							</div>
							<div class="dynamicdivs" id="AddCategory">
								<blockquote>
                                    <html:form action="/actions/admin/category">
                                        <span class="center">
                                            <h4 class="success">${CategoryFormBean.addSuccess}</h4>
                                            <h4 class="error">${CategoryFormBean.addError}</h4><br>
                                        </span>
                                        <b>Category Name:</b><br>
                                        <html:text styleClass="input" property="createCategory"></html:text><br><br>
                                        <b>Parent Category:</b><br>
                                        <html:select property="parentCategory" styleClass="input">
                                                    <html:optionsCollection name="ParentCategoryBean" value="categoryName" label="categoryName"/>
                                        </html:select><br>
                                        <html:submit styleClass="input" value="Create"></html:submit>
                                        <html:reset styleClass="input" value="Clear"></html:reset><br><br>
                                    </html:form>
                                </blockquote>

							</div>
						</div><br><br><br>
						<div class="rightcolumn">
							<div class="contentheading">
								<h3>
									Category Stats
								</h3>
							</div>
							<div class="dynamicdivs" id="CategoryNews">
								<br><br><ul>
									<li style="list-style: none">
										<p>
											<select name="categorylist2" id="categorylist2">
												<option>
													Technology
												</option>
												<option>
													Business
												</option>
												<option>
													Science
												</option>
												<option>
													Lifestyle
												</option>
												<option>
													Entertainment
												</option>
												<option>
													Sports
												</option>
											</select>
										</p>
									</li>
									<li>1001 articles submitted in 'Entertainment' in last 1 day
									</li>
									<li>400 comments in 'Entertainment' in last 1 day
									</li>
								</ul>
							</div>
						</div>
						<div class="leftcolumn">
							<div class="contentheading">
								<h3>
									Position Category
								</h3>
							</div>
							<div class="dynamicdivs" id="PositionChannel">
								<p>
									&nbsp;
								</p>
								<p>
									<br>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer" id="footer">
				© Dexter 2008 - Final Year Project for Galgotias College of Engineering and Technology<br>
				Designed By - Vaibhav Bajpai, Rahul Burman, Nupur Dixit, Yadavendra
			</div>
		</div>
	</body>
</html>
