<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<button type="button" onclick="logout()">Log Out</button>
<div class="user-header-wrapper">
    <div class="user-header-inner">
        <div class="uh-left">
            <c:forEach items="${getProfile}" var="profile">
            <div class="uh-image">
                <img class="uh-image-inner" src="data:image/jpeg;base64,${profile.profilePicBase64}">
                <div class="gradient"></div>
            </div>
        </div>
        <div class="uh-right">
            <div class="user-info">
                <h3>
                ${profile.username}
                </h3>
                <button class="btn">Edit Profile</button>
            </div>
            <div class=user-links>
                <a><span>${profile.postCount}</span> Posts</a>
                <a><span>${profile.followers}</span> Followers</a>
                <a>Following <span>${profile.following}</span></a>
            </div>
            <div class="user-bio">
                <p class="user-bio-name">Bio</p>
                <p>${profile.bio}<br/></p>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<script>
    function logout(){
        document.location.href='/logout';
    }

</script>

<style>

    :root {
        --bc: #efeeee;
        --white: #ffffff;
        --black: #000000;
        --dark-blue: #1f2029;
        --extra-dark-blue: #13141a;
        --dark-light: #424455;
        --red: #da2c4d;
        --dark-red: #6e1727;
        --yellow: #f8ab37;
        --grey: #ecedf3;
        --blue: #007bff;
        --indigo: #6610f2;
        --purple: #6f42c1;
        --pink: #e83e8c;
        --orange: #fd7e14;
        --green: #28a745;
        --light-green: #24e33a;
        --teal: #20c997;
        --cyan: #17a2b8;
        --gray: #6c757d;
        --primary: #d1a9de;
        --secondary: #7015b3;
        --success: #28a745;
        --info: #17a2b8;
        --warning: #ffc107;
        --danger: #dc3545;
        --font-family-sans-serif: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
        --font-family-monospace: SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
    }
    * {
        box-sizing: border-box;
    }
    html, body {
        margin: 0;
        width: 100%;
        min-height: 100vh;
        overflow-x: hidden;
        font-family: var(--font-family-sans-serif);
        scroll-behavior: smooth;
        -webkit-font-smoothing: antialiased;
        background-color: var(--light-mode-brig);
        font-size: 22px;
    }

    .user-header-wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .user-header-inner {
        width: 80%;
        min-height: 15vh;
        display: grid;
        align-items: center;
        grid-template-columns: auto 1fr;
        grid-column-gap: 2em;
        grid-row-gap: 2em;
    }
    .uh-left {
        width: 100%;
        height: 100%;
        padding: 0 2em 0 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .uh-image {
        width: 11rem;
        height: 11rem;
        border-radius: 50%;
        position: relative;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
    }
    .uh-image-inner {
        width: 10.5rem;
        height: 10.5rem;
        border: .3em solid var(--grey);
        object-fit: cover;
        border-radius: 50%;
        z-index: 2;
    }
    .gradient {
        width: 100%;
        height: 100%;
        padding: .3em;
        position: absolute;
        border-radius: 50%;
        background: linear-gradient(45deg, rgba(214,41,118,1) 0%, rgba(250,126,30,1) 100%);
    }

    .uh-right {
        padding: 1em;
        width: 100%;
        height: 100%;
        display: flex;
        jusify-content: flex-start;
        flex-direction: column;
        align-items: flex-start;
    }
    .user-info {
        font-size: 2em;
        line-height: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .btn {
        margin: 1em;
        border-radius: 3px;
        border: 1px solid var(--grey);
        background-color: var(--light);
        padding: .4em .6em;
        cursor: pointer;
        color: var(--black);
    }
    .user-links a {
        margin: 0 1em 0 0;
        cursor: pointer;
    }
    .user-links a span {
        color: var(--black);
        font-weight: bolder;
    }
    .user-bio-name {
        font-weight: bold;
        margin: 1.75em 0 0 0;
        line-height: 0;
    }
    /* Keyframes */
    @keyframes rotate {
        100% {
            transform: rotate(360deg);
        }
    }
    @keyframes dash {
        0% {
            stroke-dasharray: 1, 200;
            stroke-dashoffset: 0;
        }
        50% {
            stroke-dasharray: 89, 200;
            stroke-dashoffset: -35px;
        }
        100% {
            stroke-dasharray: 89, 200;
            stroke-dashoffset: -124px;
        }
    }
    @keyframes color {
        100%, 0% {
            stroke: var(--red);
        }
        40% {
            stroke: var(--blue);
        }
        66% {
            stroke: var(--green);
        }
        80%, 90% {
            stroke: var(--yellow);
        }
    }
    @media (max-width: 1024px) {
        .user-header-inner {
            width: 85%;
        }
        .uh-image {
            width: 10rem;
            height: 10rem;
        }
        .uh-image-inner {
            width: 9.5rem;
            height: 9.5rem;
        }
    }
    @media (max-width: 936px) {
        .user-header-inner {
            width: 90%;
        }
        .uh-left {
            padding: 0 1em 0 0;
        }
        .uh-image {
            width: 9rem;
            height: 9rem;
        }
        .uh-image-inner {
            width: 8.5rem;
            height: 8.5rem;
        }

    }
    @media (max-width: 767px) {
        .uh-left {
            padding: 0;
        }
        .uh-image {
            width: 8.5rem;
            height: 8.5rem;
        }
        .uh-image-inner {
            width: 8rem;
            height: 8rem;
        }
    }
</style>
</body>
</html>
