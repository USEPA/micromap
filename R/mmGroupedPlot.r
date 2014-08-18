



<!DOCTYPE html>
<html lang="en" class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>micromap/mmGroupedPlot.r at master · cran/micromap</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="cran/micromap" name="twitter:title" /><meta content="micromap - Linked Micromap Plots" name="twitter:description" /><meta content="https://avatars2.githubusercontent.com/u/6899542?v=2&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars2.githubusercontent.com/u/6899542?v=2&amp;s=400" property="og:image" /><meta content="cran/micromap" property="og:title" /><meta content="https://github.com/cran/micromap" property="og:url" /><meta content="micromap - Linked Micromap Plots" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    <link rel="xhr-socket" href="/_sockets">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="CC2F945A:6A43:18C74BFC:53F25A48" name="octolytics-dimension-request_id" /><meta content="7387892" name="octolytics-actor-id" /><meta content="mhweber" name="octolytics-actor-login" /><meta content="c61989b4d1ede910e5d3c31075220d80bbfc251fc1d10a6bc3d656b9ae38a425" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="4MMViaGSQKVsD79lPhZF1MQ6EzduRQpjo4qk0dHb36zPRS0OCvZcYUBPFONtud7jH4Ts8yhim2YcObt1Cbl9Vg==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-e3c1d787af4268efb148333bb4e620cf577eb0ba.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-d8ce071f25d7eb48a922a87c5df3c69cdcb6cd8a.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="120137975d6705fb768224ee02bf9c43">

      
  <meta name="description" content="micromap - Linked Micromap Plots">


  <meta content="6899542" name="octolytics-dimension-user_id" /><meta content="cran" name="octolytics-dimension-user_login" /><meta content="17697490" name="octolytics-dimension-repository_id" /><meta content="cran/micromap" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="17697490" name="octolytics-dimension-repository_network_root_id" /><meta content="cran/micromap" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/cran/micromap/commits/master.atom" rel="alternate" title="Recent Commits to micromap:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" aria-label="Homepage">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


        <a href="/notifications" aria-label="You have no unread notifications" class="notification-indicator tooltipped tooltipped-s" data-hotkey="g n">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="s, /" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="mhweber"
    data-repo="cran/micromap"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="cran/micromap">

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked">
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global">
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    
<ul id="user-links">
  <li>
    <a href="/mhweber" class="name">
      <img alt="Marc Weber" data-user="7387892" height="20" src="https://avatars2.githubusercontent.com/u/7387892?v=2&amp;s=40" width="20" /> mhweber
    </a>
  </li>

  <li class="new-menu dropdown-toggle js-menu-container">
    <a href="#" class="js-menu-target tooltipped tooltipped-s" aria-label="Create new...">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-arrow"></span>
    </a>

    <div class="new-menu-content js-menu-content">
    </div>
  </li>

  <li>
    <a href="/settings/profile" id="account_settings"
      class="tooltipped tooltipped-s"
      aria-label="Account settings ">
      <span class="octicon octicon-tools"></span>
    </a>
  </li>
  <li>
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="7niJOTL4sloqVwMan2zhz4bu8yhIWoNShIJ59jjvOO3bWysTYz/UyODB+qpzOEKI25PBSJU9+8jyIC5xHedGYQ==" /></div>
      <button class="sign-out-button tooltipped tooltipped-s" aria-label="Sign out">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>

<div class="js-new-dropdown-contents hidden">
  
<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


</ul>

</div>


    
  </div>
</div>

      

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="ZsebjfLoN7m4WbcFwi5z1DuHYZr1jN8JuYOwD93hEmIvl6s2wMQ9TjV6m7Iwh6hv+nmvk+tUskHRtIcE5L6K/A==" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="17697490" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/cran/micromap/watchers">
        0
      </a>
      <a href="/cran/micromap/subscription"
        class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
        <span class="js-select-button">
          <span class="octicon octicon-eye"></span>
          Watch
        </span>
      </a>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
          <div class="select-menu-header">
            <span class="select-menu-title">Notifications</span>
            <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">Be notified when participating or @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">Be notified of all conversations.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">Never be notified.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/cran/micromap/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="TSBrC/Xn+PdWFsGxUbHuD6xt9l4FzByJpAheM2YtFT6Lx8Xp4OOIbX3MZqN8h3FxiDK3KrtAbhtznmpP0gx0JQ==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Unstar this repository" title="Unstar cran/micromap">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/cran/micromap/stargazers">
          0
        </a>
</form>
    <form accept-charset="UTF-8" action="/cran/micromap/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="FSJk7J8+KEBsKSVnGeXXxha3ofFPQdKY/Xjbs68L5dHQrPDEDS6vgdl274Y0GtNOgId4AhzcdQ8Ff4H5BPPARg==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Star this repository" title="Star cran/micromap">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/cran/micromap/stargazers">
          0
        </a>
</form>  </div>

  </li>


        <li>
          <a href="/cran/micromap/fork" class="minibutton with-count js-toggler-target fork-button tooltipped-n" title="Fork your own copy of cran/micromap to your account" aria-label="Fork your own copy of cran/micromap to your account" rel="facebox nofollow">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>
          <a href="/cran/micromap/network" class="social-count">0</a>
        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/cran" class="url fn" itemprop="url" rel="author"><span itemprop="title">cran</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/cran/micromap" class="js-current-repository js-repo-home-link">micromap</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders" data-issue-count-url="/cran/micromap/issues/counts">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/cran/micromap" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /cran/micromap">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/cran/micromap/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /cran/micromap/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class="js-pull-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/cran/micromap/pulse/weekly" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /cran/micromap/pulse/weekly">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/cran/micromap/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /cran/micromap/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                
  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/cran/micromap.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/cran/micromap.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="git@github.com:cran/micromap.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="git@github.com:cran/micromap.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/cran/micromap" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/cran/micromap" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button" title="Save cran/micromap to your computer and use it in GitHub Desktop." aria-label="Save cran/micromap to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/cran/micromap/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download cran/micromap as a zip file"
                   title="Download cran/micromap as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/cran/micromap/blob/4d2782b431ebccb81800ac7db1b43b9d84d34f44/R/mmGroupedPlot.r" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:e5b0f4ae8a9ca37ac8359667f5b8dfc9 -->

<div class="file-navigation">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/blob/master/R/mmGroupedPlot.r"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/R-3.0.3/R/mmGroupedPlot.r"
                 data-name="R-3.0.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="R-3.0.3">R-3.0.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/R-3.0.2/R/mmGroupedPlot.r"
                 data-name="R-3.0.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="R-3.0.2">R-3.0.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/R-3.0.1/R/mmGroupedPlot.r"
                 data-name="R-3.0.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="R-3.0.1">R-3.0.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/R-3.0.0/R/mmGroupedPlot.r"
                 data-name="R-3.0.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="R-3.0.0">R-3.0.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/R-2.15.3/R/mmGroupedPlot.r"
                 data-name="R-2.15.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="R-2.15.3">R-2.15.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/1.9/R/mmGroupedPlot.r"
                 data-name="1.9"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="1.9">1.9</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/1.8/R/mmGroupedPlot.r"
                 data-name="1.8"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="1.8">1.8</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/1.7/R/mmGroupedPlot.r"
                 data-name="1.7"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="1.7">1.7</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/1.6/R/mmGroupedPlot.r"
                 data-name="1.6"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="1.6">1.6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/cran/micromap/tree/1.5/R/mmGroupedPlot.r"
                 data-name="1.5"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="1.5">1.5</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/cran/micromap/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="R/mmGroupedPlot.r"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/cran/micromap" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">micromap</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/cran/micromap/tree/master/R" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">R</span></a></span><span class="separator"> / </span><strong class="final-path">mmGroupedPlot.r</strong>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/cran/micromap/contributors/master/R/mmGroupedPlot.r">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span>257 lines (179 sloc)</span>
          <span class="meta-divider"></span>
        <span>9.069 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/cran/micromap/raw/master/R/mmGroupedPlot.r" class="minibutton " id="raw-url">Raw</a>
            <a href="/cran/micromap/blame/master/R/mmGroupedPlot.r" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/cran/micromap/commits/master/R/mmGroupedPlot.r" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

          <a class="octicon-button tooltipped tooltipped-nw"
             href="http://windows.github.com" aria-label="Open this file in GitHub for Windows">
              <span class="octicon octicon-device-desktop"></span>
          </a>

              <a class="octicon-button tooltipped tooltipped-n js-update-url-with-hash"
                 aria-label="Clicking this button will fork this project so you can edit the file"
                 href="/cran/micromap/edit/master/R/mmGroupedPlot.r"
                 data-method="post" rel="nofollow"><span class="octicon octicon-pencil"></span></a>

            <a class="octicon-button danger tooltipped tooltipped-s"
               href="/cran/micromap/delete/master/R/mmGroupedPlot.r"
               aria-label="Fork this project and delete file"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-r">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-line-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-line-code js-file-line"><span class="c1"># ***************************************** #</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-line-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-line-code js-file-line"><span class="c1"># *** variable names are mostly preceded by a character indicating the data type they are designed to hold</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-line-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-line-code js-file-line"><span class="c1"># *** &#39;t*&#39; for a text variable, &#39;i*&#39; for a variable containing integers (although this is used for numeric entries in general)</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-line-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-line-code js-file-line"><span class="c1"># *** &#39;b*&#39; for boolean, &#39;l*&#39; for lists of text or numeric strings</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-line-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-line-code js-file-line"><span class="c1"># ***************************************** #</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-line-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L7" class="blob-line-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-line-code js-file-line">mmgroupedplot <span class="o">&lt;-</span> <span class="kr">function</span><span class="p">(</span>stat.data<span class="p">,</span> map.data<span class="p">,</span> 		<span class="c1"># Required -- statistical data; map data</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-line-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-line-code js-file-line">  panel.types<span class="p">,</span> panel.data<span class="p">,</span> 				<span class="c1"># Required -- panel types (e.g. &#39;map&#39;, &#39;labels&#39;, &#39;dot.cl&#39;, etc.);</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-line-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-line-code js-file-line">								<span class="c1"># 	which columns in dStats to get the data from</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-line-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-line-code js-file-line">  map.link<span class="o">=</span><span class="kc">NULL</span><span class="p">,</span>						<span class="c1"># Specify in a vector (e.g. &quot;c(&#39;Subpopulation&#39;, &#39;Poly_Name&#39;)&quot;) the columns from</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-line-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-line-code js-file-line">								<span class="c1"># 	dStats and dMap (respectively) to link the correct map to the correct data line</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-line-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-line-code js-file-line">  nPanels<span class="o">=</span><span class="kp">length</span><span class="p">(</span>panel.types<span class="p">),</span>				<span class="c1"># A count of the number of panels (not meant to actually be specified by a user</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-line-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-line-code js-file-line">								<span class="c1"># 	but is used referenced in this function arguments list</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-line-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-line-code js-file-line">  grp.by<span class="p">,</span> <span class="kp">cat</span><span class="p">,</span>						<span class="c1"># Required	-- specifies which column in dStats by which to rank and order the output;</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-line-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-line-code js-file-line">								<span class="c1"># 	specifies the perceptual groups (e.g. &quot;c(5,5,5,5,2)&quot; to have 4 gorups of 5 followed </span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-line-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-line-code js-file-line">								<span class="c1"># 	by a single group of 2			</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-line-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-line-code js-file-line">  colors<span class="o">=</span>brewer.pal<span class="p">(</span><span class="m">10</span><span class="p">,</span> <span class="s">&quot;Spectral&quot;</span><span class="p">),</span>	</td>
      </tr>
      <tr>
        <td id="L18" class="blob-line-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-line-code js-file-line">  map.color<span class="o">=</span><span class="s">&#39;lightyellow&#39;</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-line-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-line-code js-file-line">  map.all<span class="o">=</span><span class="kc">FALSE</span><span class="p">,</span>	</td>
      </tr>
      <tr>
        <td id="L20" class="blob-line-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L21" class="blob-line-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-line-code js-file-line">  print.file<span class="o">=</span><span class="s">&#39;no&#39;</span><span class="p">,</span> print.res<span class="o">=</span><span class="kc">NA</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-line-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L23" class="blob-line-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-line-code js-file-line">  panel.att<span class="o">=</span><span class="kt">vector</span><span class="p">(</span><span class="s">&quot;list&quot;</span><span class="p">,</span> nPanels<span class="p">),</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-line-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L25" class="blob-line-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-line-code js-file-line">  <span class="c1">### Options for entire linked micromap plot ###</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-line-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-line-code js-file-line">  plot.header<span class="o">=</span><span class="kc">NA</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-line-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-line-code js-file-line">  plot.header.size<span class="o">=</span><span class="kc">NA</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-line-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-line-code js-file-line">  plot.header.color<span class="o">=</span><span class="kc">NA</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-line-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-line-code js-file-line">  plot.footer<span class="o">=</span><span class="kc">NA</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-line-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-line-code js-file-line">  plot.footer.size<span class="o">=</span><span class="kc">NA</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-line-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-line-code js-file-line">  plot.footer.color<span class="o">=</span><span class="kc">NA</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-line-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-line-code js-file-line">	</td>
      </tr>
      <tr>
        <td id="L33" class="blob-line-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-line-code js-file-line">  plot.width<span class="o">=</span><span class="m">7</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-line-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-line-code js-file-line">  plot.height<span class="o">=</span><span class="m">7</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-line-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L36" class="blob-line-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-line-code js-file-line">  map.spacing<span class="o">=</span><span class="m">1</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-line-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-line-code js-file-line">  plot.grp.spacing<span class="o">=</span><span class="m">1</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-line-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-line-code js-file-line">  plot.panel.spacing<span class="o">=</span><span class="m">1</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-line-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-line-code js-file-line">  plot.panel.margins<span class="o">=</span><span class="kt">c</span><span class="p">(</span><span class="m">0</span><span class="p">,</span><span class="m">0</span><span class="p">,</span><span class="m">1</span><span class="p">,</span><span class="m">0</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-line-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-line-code js-file-line"><span class="p">){</span>					<span class="c1">### end function arguments list</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-line-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L42" class="blob-line-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-line-code js-file-line">  <span class="c1"># rename function inputs (for ease in coding)</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-line-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-line-code js-file-line">dStats <span class="o">&lt;-</span> stat.data</td>
      </tr>
      <tr>
        <td id="L44" class="blob-line-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-line-code js-file-line">dMap <span class="o">&lt;-</span> map.data</td>
      </tr>
      <tr>
        <td id="L45" class="blob-line-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L46" class="blob-line-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L47" class="blob-line-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-line-code js-file-line">tPlot.header<span class="o">=</span>plot.header</td>
      </tr>
      <tr>
        <td id="L48" class="blob-line-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-line-code js-file-line">iPlot.header.size<span class="o">=</span>plot.header.size</td>
      </tr>
      <tr>
        <td id="L49" class="blob-line-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-line-code js-file-line">tPlot.header.color<span class="o">=</span>plot.header.color</td>
      </tr>
      <tr>
        <td id="L50" class="blob-line-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-line-code js-file-line">tPlot.footer<span class="o">=</span>plot.footer</td>
      </tr>
      <tr>
        <td id="L51" class="blob-line-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-line-code js-file-line">iPlot.footer.size<span class="o">=</span>plot.footer.size</td>
      </tr>
      <tr>
        <td id="L52" class="blob-line-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-line-code js-file-line">tPlot.footer.color<span class="o">=</span>plot.footer.color</td>
      </tr>
      <tr>
        <td id="L53" class="blob-line-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L54" class="blob-line-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L55" class="blob-line-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-line-code js-file-line">pps <span class="o">=</span> plot.panel.spacing<span class="o">*</span><span class="m">.05</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-line-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L57" class="blob-line-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L58" class="blob-line-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-line-code js-file-line"><span class="c1">##############################</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-line-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-line-code js-file-line"><span class="c1">## create attribute object ###</span></td>
      </tr>
      <tr>
        <td id="L60" class="blob-line-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-line-code js-file-line"><span class="c1">##############################</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-line-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L62" class="blob-line-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-line-code js-file-line">  <span class="c1"># Set &quot;plot wide&quot; options first</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-line-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-line-code js-file-line">plot.atts <span class="o">&lt;-</span> <span class="kt">list</span><span class="p">(</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-line-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-line-code js-file-line">  			plot.grp.spacing<span class="o">=</span>plot.grp.spacing<span class="o">*</span><span class="m">.05</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-line-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-line-code js-file-line">			plot.pGrp.spacing<span class="o">=</span>plot.grp.spacing<span class="o">*</span><span class="m">.05</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-line-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-line-code js-file-line">  			plot.panel.margins<span class="o">=</span>plot.panel.margins<span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L67" class="blob-line-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-line-code js-file-line">  			grp.by<span class="o">=</span>grp.by<span class="p">,</span> </td>
      </tr>
      <tr>
        <td id="L68" class="blob-line-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-line-code js-file-line">  			colors<span class="o">=</span>colors<span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-line-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-line-code js-file-line">			map.color<span class="o">=</span>map.color<span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-line-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-line-code js-file-line">			map.spacing<span class="o">=</span>map.spacing<span class="o">*</span><span class="m">.025</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-line-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-line-code js-file-line">			plot.width<span class="o">=</span>plot.width<span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-line-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-line-code js-file-line">			plot.height<span class="o">=</span>plot.height<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-line-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L74" class="blob-line-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-line-code js-file-line">  <span class="c1"># grab default attribute lists for each panel</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-line-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-line-code js-file-line">a <span class="o">&lt;-</span> <span class="kt">vector</span><span class="p">(</span><span class="s">&quot;list&quot;</span><span class="p">,</span> nPanels<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-line-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-line-code js-file-line"><span class="kr">for</span><span class="p">(</span>p <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>nPanels<span class="p">)</span> <span class="p">{</span>	</td>
      </tr>
      <tr>
        <td id="L77" class="blob-line-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-line-code js-file-line">    att.name <span class="o">&lt;-</span> <span class="kp">paste</span><span class="p">(</span>panel.types<span class="p">[</span>p<span class="p">],</span><span class="s">&#39;_att&#39;</span><span class="p">,</span>sep<span class="o">=</span><span class="s">&#39;&#39;</span><span class="p">)</span>				<span class="c1"># &lt;panel type&gt;.att is the name of the function that creates the </span></td>
      </tr>
      <tr>
        <td id="L78" class="blob-line-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-line-code js-file-line">    att.function <span class="o">&lt;-</span> <span class="kp">paste</span><span class="p">(</span>panel.types<span class="p">[</span>p<span class="p">],</span><span class="s">&#39;_att()&#39;</span><span class="p">,</span>sep<span class="o">=</span><span class="s">&#39;&#39;</span><span class="p">)</span>			<span class="c1"># 	default attribute list. we check that it exists then run it</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-line-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-line-code js-file-line">    <span class="kr">if</span><span class="p">(</span><span class="kp">exists</span><span class="p">(</span>att.name<span class="p">))</span> a<span class="p">[[</span>p<span class="p">]]</span> <span class="o">&lt;-</span> <span class="kp">eval</span><span class="p">(</span><span class="kp">parse</span><span class="p">(</span>text<span class="o">=</span>att.function<span class="p">))</span> <span class="kr">else</span> a<span class="p">[[</span>p<span class="p">]]</span> <span class="o">&lt;-</span> <span class="kp">eval</span><span class="p">(</span><span class="kp">parse</span><span class="p">(</span>text<span class="o">=</span>standard_att<span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-line-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-line-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-line-code js-file-line">a <span class="o">&lt;-</span> <span class="kp">append</span><span class="p">(</span>a<span class="p">,</span> plot.atts<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-line-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L83" class="blob-line-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L84" class="blob-line-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L85" class="blob-line-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-line-code js-file-line">  <span class="c1"># panel data must be specified for every panel type so </span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-line-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-line-code js-file-line">  <span class="c1">#	we acount for it here first</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-line-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-line-code js-file-line"><span class="kr">for</span><span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span><span class="kp">length</span><span class="p">(</span>panel.types<span class="p">))</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-line-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-line-code js-file-line">	a<span class="p">[[</span>j<span class="p">]]</span> <span class="o">&lt;-</span> <span class="kp">append</span><span class="p">(</span>a<span class="p">[[</span>j<span class="p">]],</span> <span class="kt">list</span><span class="p">(</span>panel.data<span class="o">=</span><span class="kp">unlist</span><span class="p">(</span>panel.data<span class="p">[[</span>j<span class="p">]])))</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-line-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-line-code js-file-line"> <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-line-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L91" class="blob-line-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L92" class="blob-line-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-line-code js-file-line"><span class="c1"># *** loop through attributes given in input, match the names with those in &quot;a&quot;</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-line-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-line-code js-file-line"><span class="c1"># ***  and change the values within</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-line-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-line-code js-file-line">  <span class="kr">for</span><span class="p">(</span>j <span class="kr">in</span> <span class="m">1</span><span class="o">:</span><span class="kp">length</span><span class="p">(</span>panel.att<span class="p">)){</span>		</td>
      </tr>
      <tr>
        <td id="L95" class="blob-line-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-line-code js-file-line">    k <span class="o">&lt;-</span> <span class="kp">unlist</span><span class="p">(</span>panel.att<span class="p">[[</span>j<span class="p">]][</span><span class="m">1</span><span class="p">],</span> use.names<span class="o">=</span><span class="kc">FALSE</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-line-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L97" class="blob-line-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-line-code js-file-line">    <span class="kr">for</span><span class="p">(</span>s <span class="kr">in</span> <span class="kp">names</span><span class="p">(</span>panel.att<span class="p">[[</span>j<span class="p">]])[</span><span class="m">-1</span><span class="p">]){</span>	<span class="c1"># s=&#39;header&#39;</span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-line-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-line-code js-file-line">   	w <span class="o">&lt;-</span> <span class="kp">match</span><span class="p">(</span>s<span class="p">,</span> right<span class="p">(</span><span class="kp">names</span><span class="p">(</span>a<span class="p">[[</span>k<span class="p">]]),</span> <span class="kp">nchar</span><span class="p">(</span>s<span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-line-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-line-code js-file-line">	<span class="kr">if</span><span class="p">(</span><span class="kp">is.na</span><span class="p">(</span>w<span class="p">))</span> w <span class="o">&lt;-</span> <span class="kp">match</span><span class="p">(</span><span class="kp">paste</span><span class="p">(</span><span class="s">&#39;panel.&#39;</span><span class="p">,</span>s<span class="p">,</span>sep<span class="o">=</span><span class="s">&#39;&#39;</span><span class="p">),</span> <span class="kp">names</span><span class="p">(</span>a<span class="p">[[</span>k<span class="p">]]))</span>	<span class="c1"># the &quot;panel.&quot; part of the attribute name is somewhat </span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-line-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-line-code js-file-line">												<span class="c1">#	implies so a user may have left it off </span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-line-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L102" class="blob-line-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-line-code js-file-line">	  <span class="c1"># replace the attribute or warn that no attribute by that name was found										</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-line-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-line-code js-file-line">	<span class="kr">if</span><span class="p">(</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>w<span class="p">))</span> a<span class="p">[[</span>k<span class="p">]][[</span>w<span class="p">]]</span> <span class="o">&lt;-</span> <span class="kp">unlist</span><span class="p">(</span>panel.att<span class="p">[[</span>j<span class="p">]][</span>s<span class="p">],</span> use.names<span class="o">=</span><span class="kc">FALSE</span><span class="p">)</span> <span class="kr">else</span> <span class="kp">print</span><span class="p">(</span><span class="kp">paste</span><span class="p">(</span><span class="s">&#39;attribute:&#39;</span><span class="p">,</span>s<span class="p">,</span><span class="s">&#39;is not recognized for panel&#39;</span><span class="p">,</span>j<span class="p">))</span></td>
      </tr>
      <tr>
        <td id="L104" class="blob-line-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L105" class="blob-line-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-line-code js-file-line">    <span class="kr">if</span><span class="p">(</span><span class="o">!</span><span class="kp">is.null</span><span class="p">(</span>k<span class="p">)){</span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-line-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-line-code js-file-line">    	w <span class="o">&lt;-</span> <span class="kp">match</span><span class="p">(</span><span class="s">&#39;left.margin&#39;</span><span class="p">,</span> <span class="kp">names</span><span class="p">(</span>a<span class="p">[[</span>k<span class="p">]]))</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-line-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-line-code js-file-line">    	<span class="kr">if</span><span class="p">(</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>w<span class="p">)</span> <span class="o">&amp;</span> <span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>a<span class="p">[[</span>k<span class="p">]][[</span>w<span class="p">]]))</span> 	a<span class="p">[[</span>k<span class="p">]]</span><span class="o">$</span>panel.margins<span class="p">[</span><span class="m">4</span><span class="p">]</span> <span class="o">&lt;-</span> a<span class="p">[[</span>k<span class="p">]]</span><span class="o">$</span>panel.margins<span class="p">[</span><span class="m">4</span><span class="p">]</span> <span class="o">+</span> a<span class="p">[[</span>k<span class="p">]][[</span>w<span class="p">]]</span></td>
      </tr>
      <tr>
        <td id="L108" class="blob-line-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-line-code js-file-line">    	w <span class="o">&lt;-</span> <span class="kp">match</span><span class="p">(</span><span class="s">&#39;right.margin&#39;</span><span class="p">,</span> <span class="kp">names</span><span class="p">(</span>a<span class="p">[[</span>k<span class="p">]]))</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-line-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-line-code js-file-line">    	<span class="kr">if</span><span class="p">(</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>w<span class="p">)</span> <span class="o">&amp;</span> <span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>a<span class="p">[[</span>k<span class="p">]][[</span>w<span class="p">]]))</span> 	a<span class="p">[[</span>k<span class="p">]]</span><span class="o">$</span>panel.margins<span class="p">[</span><span class="m">2</span><span class="p">]</span> <span class="o">&lt;-</span> a<span class="p">[[</span>k<span class="p">]]</span><span class="o">$</span>panel.margins<span class="p">[</span><span class="m">2</span><span class="p">]</span> <span class="o">+</span> a<span class="p">[[</span>k<span class="p">]][[</span>w<span class="p">]]</span></td>
      </tr>
      <tr>
        <td id="L110" class="blob-line-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-line-code js-file-line">      <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L111" class="blob-line-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L112" class="blob-line-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-line-code js-file-line">    <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-line-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L114" class="blob-line-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L115" class="blob-line-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L116" class="blob-line-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-line-code js-file-line"><span class="c1">##########################</span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-line-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-line-code js-file-line"><span class="c1">## data reorganization ###</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-line-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-line-code js-file-line"><span class="c1">##########################</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-line-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L120" class="blob-line-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-line-code js-file-line"><span class="c1"># *** move dStats into the DF variable, add an overall rank column, a perceptual group columnbased on ranks, and a within </span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-line-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-line-code js-file-line"><span class="c1"># *** and a within perceptual group ranking</span></td>
      </tr>
      <tr>
        <td id="L122" class="blob-line-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L123" class="blob-line-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-line-code js-file-line">DF <span class="o">&lt;-</span> create_DF_cat<span class="p">(</span>dStats<span class="p">,</span> grp.by<span class="p">,</span> <span class="kp">cat</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-line-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L125" class="blob-line-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-line-code js-file-line"><span class="c1"># *** these are all meaningless in the category context but are referenced by other functions</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-line-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-line-code js-file-line">a<span class="o">$</span>median.row <span class="o">&lt;-</span> <span class="kc">FALSE</span>			</td>
      </tr>
      <tr>
        <td id="L127" class="blob-line-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-line-code js-file-line">a<span class="o">$</span>two.ended.maps <span class="o">&lt;-</span> <span class="kc">FALSE</span></td>
      </tr>
      <tr>
        <td id="L128" class="blob-line-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-line-code js-file-line">a<span class="o">$</span>m.pGrp <span class="o">&lt;-</span> <span class="p">(</span><span class="kp">max</span><span class="p">(</span>DF<span class="o">$</span>pGrp<span class="p">)</span><span class="m">+1</span><span class="p">)</span><span class="o">/</span><span class="m">2</span></td>
      </tr>
      <tr>
        <td id="L129" class="blob-line-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-line-code js-file-line">a<span class="o">$</span>m.rank <span class="o">&lt;-</span> <span class="kc">NA</span></td>
      </tr>
      <tr>
        <td id="L130" class="blob-line-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L131" class="blob-line-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L132" class="blob-line-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-line-code js-file-line"><span class="c1"># Many panel plotting functions add extra columns to the DF table. This is</span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-line-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-line-code js-file-line"><span class="c1">#   created here as a reference to default back to after each panel is conctructed</span></td>
      </tr>
      <tr>
        <td id="L134" class="blob-line-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-line-code js-file-line">DF.hold <span class="o">&lt;-</span> DF</td>
      </tr>
      <tr>
        <td id="L135" class="blob-line-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L136" class="blob-line-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-line-code js-file-line"><span class="kr">if</span><span class="p">(</span><span class="kp">any</span><span class="p">(</span>panel.types<span class="o">==</span><span class="s">&#39;map&#39;</span><span class="p">)){</span></td>
      </tr>
      <tr>
        <td id="L137" class="blob-line-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-line-code js-file-line">  w <span class="o">&lt;-</span> <span class="kp">match</span><span class="p">(</span>dMap<span class="p">[,</span>map.link<span class="p">[</span><span class="m">2</span><span class="p">]],</span> <span class="kp">unique</span><span class="p">(</span>DF<span class="p">[,</span>map.link<span class="p">[</span><span class="m">1</span><span class="p">]]))</span></td>
      </tr>
      <tr>
        <td id="L138" class="blob-line-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-line-code js-file-line">  <span class="kr">if</span><span class="p">(</span><span class="o">!</span>map.all<span class="p">)</span> mapDF <span class="o">&lt;-</span> dMap<span class="p">[</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>w<span class="p">),]</span> <span class="kr">else</span> mapDF <span class="o">&lt;-</span> dMap</td>
      </tr>
      <tr>
        <td id="L139" class="blob-line-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L140" class="blob-line-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L141" class="blob-line-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-line-code js-file-line">  <span class="c1"># make sure there is a hole and plug column. If not, just insert dummy columns </span></td>
      </tr>
      <tr>
        <td id="L142" class="blob-line-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-line-code js-file-line">  <span class="kr">if</span><span class="p">(</span><span class="o">!</span><span class="s">&#39;hole&#39;</span><span class="o">%in%</span><span class="kp">names</span><span class="p">(</span>mapDF<span class="p">))</span> mapDF<span class="o">$</span>hole <span class="o">&lt;-</span> <span class="m">0</span></td>
      </tr>
      <tr>
        <td id="L143" class="blob-line-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-line-code js-file-line">  <span class="kr">if</span><span class="p">(</span><span class="o">!</span><span class="s">&#39;plug&#39;</span><span class="o">%in%</span><span class="kp">names</span><span class="p">(</span>mapDF<span class="p">))</span> mapDF<span class="o">$</span>plug <span class="o">&lt;-</span> <span class="m">0</span></td>
      </tr>
      <tr>
        <td id="L144" class="blob-line-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L145" class="blob-line-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L146" class="blob-line-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-line-code js-file-line">  tmpDF <span class="o">&lt;-</span> <span class="kp">unique</span><span class="p">(</span>DF<span class="p">[,</span><span class="kt">c</span><span class="p">(</span><span class="s">&#39;pGrp&#39;</span><span class="p">,</span> <span class="s">&#39;pGrpOrd&#39;</span><span class="p">,</span> map.link<span class="p">[</span><span class="m">1</span><span class="p">])])</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-line-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-line-code js-file-line">  w <span class="o">&lt;-</span> <span class="kp">match</span><span class="p">(</span>mapDF<span class="p">[,</span>map.link<span class="p">[</span><span class="m">2</span><span class="p">]],</span> tmpDF<span class="p">[,</span>map.link<span class="p">[</span><span class="m">1</span><span class="p">]])</span></td>
      </tr>
      <tr>
        <td id="L148" class="blob-line-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L149" class="blob-line-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-line-code js-file-line">  mapDF <span class="o">&lt;-</span> <span class="kp">cbind</span><span class="p">(</span>pGrp<span class="o">=</span>DF<span class="p">[</span>w<span class="p">,</span><span class="s">&#39;pGrp&#39;</span><span class="p">],</span> mapDF<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L150" class="blob-line-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-line-code js-file-line">  mapDF <span class="o">&lt;-</span> <span class="kp">cbind</span><span class="p">(</span>pGrpOrd<span class="o">=</span>DF<span class="o">$</span>pGrpOrd<span class="p">[</span>w<span class="p">],</span> mapDF<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L151" class="blob-line-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L152" class="blob-line-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-line-code js-file-line">  mapPanelWidth <span class="o">&lt;-</span> <span class="kp">as.numeric</span><span class="p">(</span>a<span class="p">[[</span><span class="kp">which</span><span class="p">(</span>panel.types<span class="o">==</span><span class="s">&#39;map&#39;</span><span class="p">)]]</span><span class="o">$</span>panel.width<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L153" class="blob-line-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-line-code js-file-line">  totalUnitWidth <span class="o">=</span> pps <span class="o">*</span> <span class="p">(</span><span class="kp">length</span><span class="p">(</span>all_atts<span class="p">(</span>a<span class="p">,</span><span class="s">&#39;panel.width&#39;</span><span class="p">))</span><span class="m">+1</span><span class="p">)</span> <span class="o">+</span> <span class="kp">sum</span><span class="p">(</span><span class="kp">as.numeric</span><span class="p">(</span>all_atts<span class="p">(</span>a<span class="p">,</span><span class="s">&#39;panel.width&#39;</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L154" class="blob-line-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L155" class="blob-line-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L156" class="blob-line-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-line-code js-file-line">  mapPanelHeight <span class="o">&lt;-</span> <span class="kp">max</span><span class="p">(</span>DF<span class="o">$</span>pGrpOrd<span class="p">[</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>DF<span class="o">$</span>pGrpOrd<span class="p">)])</span><span class="m">+.5</span></td>
      </tr>
      <tr>
        <td id="L157" class="blob-line-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-line-code js-file-line">  totalUnitHeight <span class="o">=</span> <span class="kp">max</span><span class="p">(</span>DF<span class="o">$</span>pGrp<span class="p">[</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>DF<span class="o">$</span>pGrp<span class="p">)])</span> <span class="o">*</span> mapPanelHeight </td>
      </tr>
      <tr>
        <td id="L158" class="blob-line-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L159" class="blob-line-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-line-code js-file-line">  ns <span class="o">&lt;-</span> <span class="kp">max</span><span class="p">(</span><span class="kp">unlist</span><span class="p">(</span><span class="kp">lapply</span><span class="p">(</span>all_atts<span class="p">(</span>a<span class="p">,</span> <span class="s">&#39;panel.header&#39;</span><span class="p">),</span> <span class="kr">function</span><span class="p">(</span>x<span class="p">)</span> <span class="kp">length</span><span class="p">(</span><span class="kp">strsplit</span><span class="p">(</span>x<span class="p">,</span> <span class="s">&#39;\n&#39;</span><span class="p">)[[</span><span class="m">1</span><span class="p">]]))))</span> </td>
      </tr>
      <tr>
        <td id="L160" class="blob-line-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-line-code js-file-line">  adj.plot.height <span class="o">&lt;-</span> plot.height <span class="o">-</span> </td>
      </tr>
      <tr>
        <td id="L161" class="blob-line-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-line-code js-file-line">		ns<span class="o">*</span><span class="m">.2</span> <span class="o">+</span> 							<span class="c1"># header lines</span></td>
      </tr>
      <tr>
        <td id="L162" class="blob-line-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-line-code js-file-line">		<span class="kp">any</span><span class="p">(</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>all_atts<span class="p">(</span>a<span class="p">,</span> <span class="s">&#39;xaxis.title&#39;</span><span class="p">)))</span><span class="o">*</span><span class="m">.1</span> <span class="o">+</span></td>
      </tr>
      <tr>
        <td id="L163" class="blob-line-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-line-code js-file-line">		<span class="m">.2</span> <span class="o">+</span> <span class="m">.5</span>							<span class="c1"># top &amp; bottom margin</span></td>
      </tr>
      <tr>
        <td id="L164" class="blob-line-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L165" class="blob-line-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-line-code js-file-line">  plot.h2w.ratio <span class="o">&lt;-</span> <span class="p">(</span>mapPanelHeight<span class="o">/</span>totalUnitHeight <span class="o">*</span> adj.plot.height<span class="p">)</span> <span class="o">/</span> <span class="p">(</span>mapPanelWidth<span class="o">/</span>totalUnitWidth <span class="o">*</span> plot.width<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L166" class="blob-line-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L167" class="blob-line-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L168" class="blob-line-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-line-code js-file-line">    <span class="c1"># change coordinates to align properly with other panels</span></td>
      </tr>
      <tr>
        <td id="L169" class="blob-line-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-line-code js-file-line">  nYrows <span class="o">&lt;-</span> <span class="kp">diff</span><span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>pGrpOrd<span class="p">[</span><span class="o">!</span><span class="kp">is.na</span><span class="p">(</span>mapDF<span class="o">$</span>pGrpOrd<span class="p">)])</span> <span class="o">+</span> <span class="kt">c</span><span class="p">(</span><span class="m">-1</span><span class="p">,</span><span class="m">1</span><span class="p">)</span> <span class="o">*</span> <span class="m">.5</span><span class="p">)</span>  </td>
      </tr>
      <tr>
        <td id="L170" class="blob-line-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-line-code js-file-line">  nXcols <span class="o">&lt;-</span> nYrows<span class="o">/</span>plot.h2w.ratio		</td>
      </tr>
      <tr>
        <td id="L171" class="blob-line-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L172" class="blob-line-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-line-code js-file-line">  limitingAxis <span class="o">&lt;-</span> <span class="kp">ifelse</span><span class="p">(</span><span class="kp">diff</span><span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsy<span class="p">))</span> <span class="o">/</span> <span class="kp">diff</span><span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsx<span class="p">))</span> <span class="o">&gt;</span> </td>
      </tr>
      <tr>
        <td id="L173" class="blob-line-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-line-code js-file-line">					 plot.h2w.ratio<span class="p">,</span> <span class="s">&#39;y&#39;</span><span class="p">,</span><span class="s">&#39;x&#39;</span><span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L174" class="blob-line-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L175" class="blob-line-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L176" class="blob-line-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-line-code js-file-line">  <span class="kr">if</span><span class="p">(</span>limitingAxis<span class="o">==</span><span class="s">&#39;y&#39;</span><span class="p">){</span></td>
      </tr>
      <tr>
        <td id="L177" class="blob-line-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-line-code js-file-line">	  redFact <span class="o">&lt;-</span> <span class="kp">diff</span><span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsy<span class="p">))</span><span class="o">/</span>nYrows </td>
      </tr>
      <tr>
        <td id="L178" class="blob-line-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-line-code js-file-line">	  mapDF<span class="o">$</span>coordsy <span class="o">&lt;-</span> <span class="p">(</span>mapDF<span class="o">$</span>coordsy <span class="o">-</span> median<span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsy<span class="p">)))</span><span class="o">/</span><span class="kp">diff</span><span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsy<span class="p">))</span><span class="o">*</span>nYrows</td>
      </tr>
      <tr>
        <td id="L179" class="blob-line-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-line-code js-file-line">	  mapDF<span class="o">$</span>coordsx <span class="o">&lt;-</span>   <span class="p">(</span>mapDF<span class="o">$</span>coordsx <span class="o">-</span> median<span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsx<span class="p">)))</span><span class="o">/</span>redFact </td>
      </tr>
      <tr>
        <td id="L180" class="blob-line-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L181" class="blob-line-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-line-code js-file-line">  <span class="kr">if</span><span class="p">(</span>limitingAxis<span class="o">==</span><span class="s">&#39;x&#39;</span><span class="p">){</span></td>
      </tr>
      <tr>
        <td id="L182" class="blob-line-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-line-code js-file-line">	  redFact <span class="o">&lt;-</span> <span class="kp">diff</span><span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsx<span class="p">))</span><span class="o">/</span>nXcols </td>
      </tr>
      <tr>
        <td id="L183" class="blob-line-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-line-code js-file-line">	  mapDF<span class="o">$</span>coordsx <span class="o">&lt;-</span> <span class="p">(</span>mapDF<span class="o">$</span>coordsx <span class="o">-</span> median<span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsx<span class="p">)))</span><span class="o">/</span><span class="kp">diff</span><span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsx<span class="p">))</span><span class="o">*</span>nXcols</td>
      </tr>
      <tr>
        <td id="L184" class="blob-line-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-line-code js-file-line">	  mapDF<span class="o">$</span>coordsy <span class="o">&lt;-</span>   <span class="p">(</span>mapDF<span class="o">$</span>coordsy <span class="o">-</span> median<span class="p">(</span><span class="kp">range</span><span class="p">(</span>mapDF<span class="o">$</span>coordsy<span class="p">)))</span><span class="o">/</span>redFact </td>
      </tr>
      <tr>
        <td id="L185" class="blob-line-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-line-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-line-code js-file-line">  </td>
      </tr>
      <tr>
        <td id="L187" class="blob-line-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-line-code js-file-line">  a<span class="p">[[</span><span class="kp">which</span><span class="p">(</span>panel.types<span class="o">==</span><span class="s">&#39;map&#39;</span><span class="p">)]]</span><span class="o">$</span>bdrCoordsy <span class="o">&lt;-</span> <span class="kt">c</span><span class="p">(</span><span class="m">-1</span><span class="p">,</span><span class="m">1</span><span class="p">)</span> <span class="o">*</span> nYrows<span class="o">/</span><span class="m">2</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-line-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-line-code js-file-line">  a<span class="p">[[</span><span class="kp">which</span><span class="p">(</span>panel.types<span class="o">==</span><span class="s">&#39;map&#39;</span><span class="p">)]]</span><span class="o">$</span>bdrCoordsx <span class="o">&lt;-</span> <span class="kt">c</span><span class="p">(</span><span class="m">-1</span><span class="p">,</span><span class="m">1</span><span class="p">)</span> <span class="o">*</span> nXcols<span class="o">/</span><span class="m">2</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-line-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-line-code js-file-line">  	 </td>
      </tr>
      <tr>
        <td id="L190" class="blob-line-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-line-code js-file-line">  </td>
      </tr>
      <tr>
        <td id="L191" class="blob-line-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-line-code js-file-line">  <span class="kp">rm</span><span class="p">(</span>tmpDF<span class="p">,</span> dMap<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L192" class="blob-line-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L193" class="blob-line-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L194" class="blob-line-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L195" class="blob-line-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L196" class="blob-line-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-line-code js-file-line"><span class="c1"># *** set up a list to store plot objects to be created later</span></td>
      </tr>
      <tr>
        <td id="L197" class="blob-line-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-line-code js-file-line"><span class="c1"># *** note: each panel in the plot is a &quot;plot object&quot; </span></td>
      </tr>
      <tr>
        <td id="L198" class="blob-line-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-line-code js-file-line">plots <span class="o">&lt;-</span> <span class="kt">vector</span><span class="p">(</span><span class="s">&quot;list&quot;</span><span class="p">,</span> nPanels<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L199" class="blob-line-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L200" class="blob-line-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L201" class="blob-line-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L202" class="blob-line-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-line-code js-file-line"><span class="c1">###############################</span></td>
      </tr>
      <tr>
        <td id="L203" class="blob-line-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-line-code js-file-line"><span class="c1">##### create plot objects #####</span></td>
      </tr>
      <tr>
        <td id="L204" class="blob-line-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-line-code js-file-line"><span class="c1">###############################</span></td>
      </tr>
      <tr>
        <td id="L205" class="blob-line-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-line-code js-file-line"><span class="c1"># *** each section builds a plot object of the specified type</span></td>
      </tr>
      <tr>
        <td id="L206" class="blob-line-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-line-code js-file-line"><span class="kr">for</span><span class="p">(</span>p <span class="kr">in</span> <span class="m">1</span><span class="o">:</span>nPanels<span class="p">){</span>		</td>
      </tr>
      <tr>
        <td id="L207" class="blob-line-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L208" class="blob-line-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-line-code js-file-line">  <span class="kr">if</span> <span class="p">(</span>panel.types<span class="p">[</span>p<span class="p">]</span><span class="o">==</span><span class="s">&#39;map&#39;</span><span class="p">){</span></td>
      </tr>
      <tr>
        <td id="L209" class="blob-line-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L210" class="blob-line-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-line-code js-file-line">	plots<span class="p">[[</span>p<span class="p">]]</span>  <span class="o">&lt;-</span> CatMaps<span class="p">(</span>plots<span class="p">[[</span>p<span class="p">]],</span> p<span class="p">,</span> mapDF<span class="p">,</span> a<span class="p">)</span> </td>
      </tr>
      <tr>
        <td id="L211" class="blob-line-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-line-code js-file-line">  </td>
      </tr>
      <tr>
        <td id="L212" class="blob-line-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-line-code js-file-line">  <span class="p">}</span> <span class="kr">else</span> <span class="kr">if</span><span class="p">(</span><span class="kp">exists</span><span class="p">(</span><span class="kp">as.character</span><span class="p">(</span><span class="kp">paste</span><span class="p">(</span>panel.types<span class="p">[</span>p<span class="p">],</span><span class="s">&#39;_build&#39;</span><span class="p">,</span>sep<span class="o">=</span><span class="s">&#39;&#39;</span><span class="p">))))</span> <span class="p">{</span>					<span class="c1"># all graph types should have a function by the </span></td>
      </tr>
      <tr>
        <td id="L213" class="blob-line-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-line-code js-file-line">												<span class="c1"># same name. First we check to see if such a function does</span></td>
      </tr>
      <tr>
        <td id="L214" class="blob-line-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-line-code js-file-line">												<span class="c1"># in fact exist, if so we use &quot;eval(parse(...&quot; to call it</span></td>
      </tr>
      <tr>
        <td id="L215" class="blob-line-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-line-code js-file-line">	plots<span class="p">[[</span>p<span class="p">]]</span> <span class="o">&lt;-</span> <span class="kp">eval</span><span class="p">(</span><span class="kp">parse</span><span class="p">(</span>text<span class="o">=</span><span class="kp">paste</span><span class="p">(</span>panel.types<span class="p">[</span>p<span class="p">],</span><span class="s">&#39;_build(plots[[p]], p, DF, a)&#39;</span><span class="p">,</span>sep<span class="o">=</span><span class="s">&#39;&#39;</span><span class="p">)))</span></td>
      </tr>
      <tr>
        <td id="L216" class="blob-line-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L217" class="blob-line-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L218" class="blob-line-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-line-code js-file-line">  <span class="p">}</span> <span class="kr">else</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L219" class="blob-line-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L220" class="blob-line-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-line-code js-file-line">	<span class="kp">stop</span><span class="p">(</span><span class="kp">paste</span><span class="p">(</span><span class="s">&quot;unknown panel type -- &#39;&quot;</span><span class="p">,</span>panel.types<span class="p">[</span>p<span class="p">],</span><span class="s">&quot;&#39;&quot;</span><span class="p">,</span> sep<span class="o">=</span><span class="s">&#39;&#39;</span><span class="p">))</span>	<span class="c1"># if no such function exists, lmPlot2 errors out </span></td>
      </tr>
      <tr>
        <td id="L221" class="blob-line-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L222" class="blob-line-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L223" class="blob-line-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L224" class="blob-line-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-line-code js-file-line">    <span class="c1"># reset DF table (delete added tmp.data columns and what not</span></td>
      </tr>
      <tr>
        <td id="L225" class="blob-line-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-line-code js-file-line">  DF <span class="o">&lt;-</span> DF.hold	</td>
      </tr>
      <tr>
        <td id="L226" class="blob-line-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L227" class="blob-line-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-line-code js-file-line"> <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L228" class="blob-line-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L229" class="blob-line-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L230" class="blob-line-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-line-code js-file-line"><span class="c1">##############################</span></td>
      </tr>
      <tr>
        <td id="L231" class="blob-line-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-line-code js-file-line"><span class="c1">##### construct the plot #####</span></td>
      </tr>
      <tr>
        <td id="L232" class="blob-line-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-line-code js-file-line"><span class="c1">##############################</span></td>
      </tr>
      <tr>
        <td id="L233" class="blob-line-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L234" class="blob-line-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-line-code js-file-line">lwidth <span class="o">&lt;-</span> pps</td>
      </tr>
      <tr>
        <td id="L235" class="blob-line-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-line-code js-file-line"><span class="kr">for</span><span class="p">(</span>w <span class="kr">in</span> <span class="m">1</span><span class="o">:</span><span class="kp">length</span><span class="p">(</span>all_atts<span class="p">(</span>a<span class="p">,</span><span class="s">&#39;panel.width&#39;</span><span class="p">)))</span> lwidth <span class="o">&lt;-</span> <span class="kt">c</span><span class="p">(</span>lwidth<span class="p">,</span> all_atts<span class="p">(</span>a<span class="p">,</span><span class="s">&#39;panel.width&#39;</span><span class="p">)[</span>w<span class="p">],</span> pps<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L236" class="blob-line-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L237" class="blob-line-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-line-code js-file-line">  <span class="c1"># sets layout according to specified widths in function arguments</span></td>
      </tr>
      <tr>
        <td id="L238" class="blob-line-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-line-code js-file-line">lmLayout <span class="o">&lt;-</span> grid.layout<span class="p">(</span>nrow <span class="o">=</span> <span class="m">1</span><span class="p">,</span> ncol <span class="o">=</span> <span class="kp">length</span><span class="p">(</span>lwidth<span class="p">),</span> </td>
      </tr>
      <tr>
        <td id="L239" class="blob-line-num js-line-number" data-line-number="239"></td>
        <td id="LC239" class="blob-line-code js-file-line">			widths <span class="o">=</span> unit<span class="p">(</span>lwidth<span class="p">,</span> <span class="kp">rep</span><span class="p">(</span><span class="s">&quot;null&quot;</span><span class="p">,</span> <span class="kp">length</span><span class="p">(</span>lwidth<span class="p">))),</span> </td>
      </tr>
      <tr>
        <td id="L240" class="blob-line-num js-line-number" data-line-number="240"></td>
        <td id="LC240" class="blob-line-code js-file-line">			heights <span class="o">=</span> unit<span class="p">(</span><span class="kp">rep</span><span class="p">(</span><span class="m">1</span><span class="p">,</span> <span class="kp">length</span><span class="p">(</span>lwidth<span class="p">)),</span> <span class="kp">rep</span><span class="p">(</span><span class="s">&quot;null&quot;</span><span class="p">,</span> <span class="kp">length</span><span class="p">(</span>lwidth<span class="p">))))</span></td>
      </tr>
      <tr>
        <td id="L241" class="blob-line-num js-line-number" data-line-number="241"></td>
        <td id="LC241" class="blob-line-code js-file-line">plots<span class="o">$</span>layout <span class="o">&lt;-</span> lmLayout</td>
      </tr>
      <tr>
        <td id="L242" class="blob-line-num js-line-number" data-line-number="242"></td>
        <td id="LC242" class="blob-line-code js-file-line">plots<span class="o">$</span>plot.width <span class="o">&lt;-</span> plot.width</td>
      </tr>
      <tr>
        <td id="L243" class="blob-line-num js-line-number" data-line-number="243"></td>
        <td id="LC243" class="blob-line-code js-file-line">plots<span class="o">$</span>plot.height <span class="o">&lt;-</span> plot.height</td>
      </tr>
      <tr>
        <td id="L244" class="blob-line-num js-line-number" data-line-number="244"></td>
        <td id="LC244" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L245" class="blob-line-num js-line-number" data-line-number="245"></td>
        <td id="LC245" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L246" class="blob-line-num js-line-number" data-line-number="246"></td>
        <td id="LC246" class="blob-line-code js-file-line"><span class="kp">class</span><span class="p">(</span>plots<span class="p">)</span> <span class="o">&lt;-</span> <span class="s">&quot;mm&quot;</span></td>
      </tr>
      <tr>
        <td id="L247" class="blob-line-num js-line-number" data-line-number="247"></td>
        <td id="LC247" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L248" class="blob-line-num js-line-number" data-line-number="248"></td>
        <td id="LC248" class="blob-line-code js-file-line"><span class="kr">if</span><span class="p">(</span>print.file<span class="o">==</span><span class="s">&quot;no&quot;</span><span class="p">)</span> print.file <span class="o">&lt;-</span> <span class="kc">NULL</span></td>
      </tr>
      <tr>
        <td id="L249" class="blob-line-num js-line-number" data-line-number="249"></td>
        <td id="LC249" class="blob-line-code js-file-line"><span class="kp">print</span><span class="p">(</span>plots<span class="p">,</span> name<span class="o">=</span>print.file<span class="p">,</span> res<span class="o">=</span>print.res<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L250" class="blob-line-num js-line-number" data-line-number="250"></td>
        <td id="LC250" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L251" class="blob-line-num js-line-number" data-line-number="251"></td>
        <td id="LC251" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L252" class="blob-line-num js-line-number" data-line-number="252"></td>
        <td id="LC252" class="blob-line-code js-file-line"><span class="kp">invisible</span><span class="p">(</span>plots<span class="p">)</span></td>
      </tr>
      <tr>
        <td id="L253" class="blob-line-num js-line-number" data-line-number="253"></td>
        <td id="LC253" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L254" class="blob-line-num js-line-number" data-line-number="254"></td>
        <td id="LC254" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L255" class="blob-line-num js-line-number" data-line-number="255"></td>
        <td id="LC255" class="blob-line-code js-file-line"><span class="p">}</span>   <span class="c1">###### END FUNCTION ######</span></td>
      </tr>
</table>

  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.12935s from github-fe119-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents js-suggester-field" placeholder=""></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-12d5fda141e78e513749dddbc56445fe172cbd9a.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-41dd8db0828df06456337006ee18d4eba9443071.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

