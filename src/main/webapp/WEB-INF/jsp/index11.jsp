<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>

    <style>
        .main-ul {
            background-color: white;
            position: absolute;
            top: 16px;
            left: 1281px;
            display: flex;
            gap: 60px;
            font-size: 22px;
        }
        ul{
            list-style: none;
        }
        .posts {
            position: relative;
            top: 56px;
            right: 486px;
        }
        .followers {
            position: relative;
            top: 56px;
            right: 480px;
        }
        .bio {
            position: relative;
            top: 130px;
            right: 887px;
        }
        .profile-pic{
            height: 100px;
            width: 100px;
        }
    </style>


</head>
<body>



    <div class="user-profile">
        <ul class="main-ul">
            <li>Karuppusamy_KK</li>
            <li><button type="button">Edit profile</button></li>
            <li class="posts">Posts</li>
            <li class="followers">650 Followers</li>
            <li class="followers">Following 150</li>
            <li class="followers">
                <c:forEach items="${getProfile}" var="profile">
                    <p>username: ${profile.username}</p>
                    <p>image: <img src="data:image/jpeg;base64,${profile.profilePicBase64}" class="profile-pic"></p>
                </c:forEach>
                hello</li>
            <li class="bio">Bio</li>
        </ul>
    </div>






</body>

</html>
