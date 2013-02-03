<!doctype html>
<!--[if lt IE 7 ]> <html lang="{metaLanguage}" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]> <html lang="{metaLanguage}" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]> <html lang="{metaLanguage}" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="{metaLanguage}" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="{metaLanguage}" class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    
    <title>{title}</title>
    <base href="{baseHref}" />
    
    <meta name="description" content="{metaDescription}">
    <meta name="author" content="{metaPublisher}">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">
    <meta name="application-name" content="phpMyFAQ {phpmyfaqversion}">
    <meta name="copyright" content="(c) 2001-2012 phpMyFAQ Team">
    <meta name="publisher" content="{metaPublisher}">
    <meta name="robots" content="INDEX, FOLLOW">
    <meta name="revisit-after" content="7 days">
    <meta name="MSSmartTagsPreventParsing" content="true">

    <!-- Share on Facebook -->
    <meta property="og:title" content="{title}" />
    <meta property="og:description" content="{metaDescription}" />
    <meta property="og:image" content="" />

    <link rel="stylesheet" href="template/{tplSetName}/css/bootstrap.min.css?v=1">
    <link rel="stylesheet" href="template/{tplSetName}/css/bootstrap-responsive.min.css?v=1">
    <link rel="stylesheet" href="template/{tplSetName}/css/{stylesheet}.css?v=1">

    <script src="inc/js/modernizr.min.js"></script>
    <script src="inc/js/jquery.min.js"></script>
    <script src="inc/js/functions.js"></script>

    <link rel="shortcut icon" href="template/{tplSetName}/favicon.ico">
    <link rel="apple-touch-icon" href="template/{tplSetName}/apple-touch-icon.png">
    
    <link rel="alternate" title="News RSS Feed" type="application/rss+xml" href="feed/news/rss.php">
    <link rel="alternate" title="TopTen RSS Feed" type="application/rss+xml" href="feed/topten/rss.php">
    <link rel="alternate" title="Latest FAQ Records RSS Feed" type="application/rss+xml" href="feed/latest/rss.php">
    <link rel="alternate" title="Open Questions RSS Feed" type="application/rss+xml" href="feed/openquestions/rss.php">
    <link rel="search" type="application/opensearchdescription+xml" title="{metaTitle}" href="{opensearch}">
</head>
<body dir="{dir}">

<div class="container-fluid main">

    <header class="row-fluid" id="header">
        <h1>
            <a title="{header}" href="{faqHome}">{header}</a>
        </h1>
    </header>

    <nav class="row-fluid">
        <div class="navbar">
            <div class="navbar-inner">
                <ul class="nav">
                    <li>{allCategories}</li>
                    <li>{showInstantResponse}</li>
                    <li>{msgAddContent}</li>
                    <li>{msgQuestion}</li>
                    <li>{msgOpenQuestions}</li>
                    <li>{showSitemap}</li>
                    <li>{msgContact}</li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="row-fluid" id="content">

        <div class="span3" id="leftContent">
            <div class="well" id="categories">
                <ul class="nav nav-list">
                    <li class="home">{backToHome}</li>
                {showCategories}
                </ul>
            </div>

            <div class="ads">
                <small>Ads</small>
            </div>
        </div>

        <div class="span6" id="mainContent">
            [globalSearchBox]
            <div class="well" id="searchBox">
                <form class="form-search" id="search" action="{writeSendAdress}" method="get">
                    <div class="input-append">
                        <input type="hidden" name="searchcategory" value="{categoryId}" />
                        <input type="hidden" name="action" value="search" />
                        <input type="search" name="search" id="searchfield" placeholder="{searchBox} ..." class="input-medium search-query" />
                        <button type="submit" class="btn btn-primary">{searchBox}</button>
                    </div>
                </form>
                <small>{msgSearch}</small>
            </div>
            [/globalSearchBox]
            [globalSuggestBox]
            <div class="well" id="searchBox">
                <form class="form-search" id="instantform" action="?action=instantresponse" method="post">
                    <input type="hidden" name="ajaxlanguage" id="ajaxlanguage" value="{ajaxlanguage}" />
                    <input type="search" name="search" id="instantfield" value="" class="input-medium search-query"
                           placeholder="{msgDescriptionInstantResponse}" onfocus="autoSuggest(); return false;" />
                </form>
                <small>{msgSearch}</small>
            </div>
            [/globalSuggestBox]

        {writeContent}
        </div>

        <aside class="span3">
        {rightBox}
            <section class="well">
                <header>
                    <h3>{stickyRecordsHeader}</h3>
                </header>
                <ul>
                    [stickyRecordsList]
                    <li><a href="{stickyRecordsUrl}">{stickyRecordsTitle}</a></li>
                    [/stickyRecordsList]
                </ul>
            </section>

            <section class="ads">
                <small>Ads</small>

            </section>
        </aside>
    </div>
</div>

<footer class="container-fluid footer">
    <div class="row-fluid">
        <section class="span4" id="userOnline">
            <p>{userOnline}</p>
        </section>
        <section class="span8">
            <form action="{writeLangAdress}" method="post" class="form-inline">
                <p class="pull-right" id="copyrightnote">
                {copyright} | {switchLanguages} <input type="hidden" name="action" value="" />
                </p>
            </form>
        </section>
    </div>
</footer>

{debugMessages}

</body>
</html>