<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:param name="html.stylesheet" />

  <!-- content to be included in the header for each page -->
  <xsl:template name="user.head.content">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <link rel="shortcut icon" href="//www.elasticsearch.org/content/themes/elasticsearch-org/favicon.ico" />
    <link rel="stylesheet" id="prettify-gc-syntax-highlighter-css"  href="//www.elasticsearch.org/content/plugins/prettify-gc-syntax-highlighter/prettify.css?ver=3.5.2" type="text/css" media="all" />
    <link rel="stylesheet" id="appStyles-css"  href="//www.elasticsearch.org/content/themes/elasticsearch-org/css/main.css?ver=1395693666" type="text/css" media="all" />
    <script type="text/javascript" src="//www.elasticsearch.org/wp-includes/js/jquery/jquery.js?ver=1.8.3"></script>
    <link rel="stylesheet" href="//www.elasticsearch.org/content/themes/elasticsearch-org/style.css" type="text/css" media="all" />
    <script src="//cdn.optimizely.com/js/281975433.js"></script>

    <script type="text/javascript">
      jQuery(function() {
        jQuery('div.navheader+div').css('minHeight',jQuery('div.toc').height()+'px');
        jQuery('article.guide_content a[id]').each(function() { this.href='#'+this.id });
      });
    </script>
    <link rel="stylesheet" type="text/css" href="styles.css?3" />
  </xsl:template>

  <!-- Wraps the content in required divs -->
  <xsl:template name="local.body.wrapper">
    <xsl:param name="doc" select="self::*" />
    <xsl:param name="prev" />
    <xsl:param name="next" />
    <xsl:param name="nav.context" />
    <xsl:param name="content" />
    <xsl:apply-templates select="." mode="class.attribute">
      <xsl:with-param name="class" select="'single single-guide'" />
    </xsl:apply-templates>
    <xsl:comment>Google Tag Manager</xsl:comment>
    <script><![CDATA[ dataLayer = []; ]]></script>
    <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-5FTL28"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <script><![CDATA[
    if(jQuery('body').data('cookie') != "eu" || jQuery.cookie('allowCookies')){
    (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5FTL28');}
]]></script>


    <xsl:comment>[if lt IE 8]&gt;<![CDATA[
        <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
      <![endif]]]></xsl:comment>
    <header>
        <nav role="navigation" id="mobile-nav-container" class="off-canvas-nav">
            <ul id="mobile-nav" class="menu"><li id="menu-item-75892" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-75892"><a href="/overview/">Overview</a>
<ul class="sub-menu">
    <li id="menu-item-75895" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-75895"><a href="/overview/">Overview</a></li>
    <li id="menu-item-68760" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68760"><a href="/overview/elasticsearch/">Elasticsearch</a></li>
    <li id="menu-item-75894" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-75894"><a href="/overview/marvel/">Marvel</a></li>
    <li id="menu-item-68758" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68758"><a href="/overview/kibana/">Kibana</a></li>
    <li id="menu-item-68756" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68756"><a href="/overview/kibana/installation/">Kibana Installation</a></li>
    <li id="menu-item-68757" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68757"><a href="/overview/kibana/support/">Kibana Support</a></li>
    <li id="menu-item-68759" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68759"><a href="/overview/logstash/">Logstash</a></li>
    <li id="menu-item-74019" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-74019"><a href="/overview/hadoop/">Hadoop</a></li>
    <li id="menu-item-75893" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-75893"><a href="/overview/elkdownloads/">ELK Downloads</a></li>
</ul>
</li>
<li id="menu-item-55" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-55"><a href="/resources/">Resources</a>
<ul class="sub-menu">
    <li id="menu-item-76342" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-76342"><a href="/guide/">Guide</a></li>
    <li id="menu-item-4843" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4843"><a href="/videos/">Videos</a></li>
</ul>
</li>
<li id="menu-item-657" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-657"><a href="/community/">Community</a></li>
<li id="menu-item-68802" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68802"><a href="/case-studies/">Case Studies</a></li>
<li id="menu-item-45" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-45"><a href="/blog/">Blog</a></li>
<li id="menu-item-12" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12"><a target="_blank" href="http://elasticsearch.com">Company</a></li>
</ul>            <ul class="add-on">
                <li><a href="/overview/elkdownloads/">Download</a></li>
            </ul>
        </nav>
        <div class="container">
<div id="header-inner">
                <h1 id="header-logo"><a class="faux" href="http://www.elasticsearch.org">Elasticsearch</a></h1>
                <nav role="navigation" id="main-nav-container" class="main-nav">
                    <ul id="top-nav" class="menu"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-75892"><a href="/overview/">Overview</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-53 current_page_item menu-item-55"><a href="/resources/">Resources</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-657"><a href="/community/">Community</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-68802"><a href="/case-studies/">Case Studies</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-45"><a href="/blog/">Blog</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-12"><a target="_blank" href="http://elasticsearch.com">Company</a></li>
</ul>                    <ul class="add-on">
                        <li><a class="btn btn-primary" href="/overview/elkdownloads/">Download</a></li>
                    </ul>
                </nav>
                <div class="slide-trigger navigation" id="nav-trigger" aria-hidden="true">
                    <span class="bar"></span>
                    <span class="bar"></span>
                    <span class="bar"></span>
                </div>
                <hr />
                <ul id="sub_nav">   <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-76342"><a href="/guide/">Guide</a></li>
    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4843"><a href="/videos/">Videos</a></li>
            </ul>
        </div>
        </div>
    </header>
    <div class="global_wrapper">
<div class="page_content">

        <div class="container">
          <section id="search_container" class="active">
            <form id="blog_search" role="search" action="/" method="get">
              <div class="blog_search_wrapper">
                <input id="s" name="s" class="search_term" type="text" placeholder="search" autocomplete="off" tabindex="1" />
                <input type="submit" class="search_submit" value=" " />
                <ul id="results" />
              </div>
            </form>
          </section>
          <section class="full_width guide">
            <article class="guide_content">
              <!-- include content -->
              <xsl:call-template name="local.body.content">
                <xsl:with-param name="node" select="$doc" />
                <xsl:with-param name="prev" select="$prev" />
                <xsl:with-param name="next" select="$next" />
                <xsl:with-param name="nav.context" select="$nav.context" />
                <xsl:with-param name="content" select="$content" />
              </xsl:call-template>
              <!-- content done -->
            </article>
          </section>
        </div>
      </div>
    </div>

    <!-- global wrapper -->
    <footer>
                <div id="footer_container" class="full_wrapper">
            <div class="container">
                <nav role="navigation">
                    <ul id="footer_nav" class="menu"><li id="menu-item-36" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-36"><a target="_blank" href="http://elasticsearch.com">Company</a></li>
<li id="menu-item-74980" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-74980"><a href="/resources/">Resources</a></li>
<li id="menu-item-3106" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3106"><a href="/terms-of-use/">Terms</a></li>
<li id="menu-item-3107" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3107"><a href="/privacy-and-cookie-policy/">Privacy</a></li>
<li id="menu-item-3105" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3105"><a href="/contact/">Contact</a></li>
<li id="menu-item-39" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-39"><a href="/blog/">Blog</a></li>
</ul>                </nav>
                <div id="social">
                    <a href="https://twitter.com/elasticsearch" class="social_icons" target="_blank"><i class="twitter"></i></a>
                    <a href="https://www.facebook.com/elasticsearch" class="social_icons" target="_blank"><i class="facebook"></i></a>
                </div>
                                    <div id="footer_form">
                        <label class="form_label">Sign up for updates!</label>

                <div class='gf_browser_chrome gform_wrapper' id='gform_wrapper_4' ><a id='gf_4' name='gf_4' class='gform_anchor' ></a><form method='post' enctype='multipart/form-data' target='gform_ajax_frame_4' id='gform_4'  action='/empty-template/#gf_4'>
                        <div class='gform_body'>
                            <ul id='gform_fields_4' class='gform_fields top_label description_below'><li id='field_4_6' class='gfield               gfield_contains_required' ><label class='gfield_label' for='input_4_6'>enter you email<span class='gfield_required'>*</span></label><div class='ginput_container'><input name='input_6' id='input_4_6' type='email' value='' class='medium'  tabindex='50'   /></div></li><li id='field_4_2' class='gfield     gform_hidden' ><input name='input_2' id='input_4_2' type='hidden' class='gform_hidden' value='813-MAM-392' /></li><li id='field_4_3' class='gfield     gform_hidden' ><input name='input_3' id='input_4_3' type='hidden' class='gform_hidden' value='WEB.org' /></li><li id='field_4_4' class='gfield     gform_hidden' ><input name='input_4' id='input_4_4' type='hidden' class='gform_hidden' value='WEB.org - Footer - Updates' /></li>
                            </ul></div>
        <script type="text/javascript">
            <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
            jQuery(function(){
                jQuery('#gform_submit_button_4').click( function() {
                    if(window["gf_submitting_4"]){
                        return false;
                    }
                    if( !jQuery("#gform_4")[0].checkValidity || jQuery("#gform_4")[0].checkValidity()){
                        window["gf_submitting_4"]=true;
                    }
                });
            });
            ]]>//]]&gt;</xsl:text>
        </script>
        <div class='gform_footer top_label'> <input type='submit' id='gform_submit_button_4' class='button gform_button' value='Submit' tabindex='51' /><input type='hidden' name='gform_ajax' value='form_id=4&amp;title=&amp;description=' />
            <input type='hidden' class='gform_hidden' name='is_submit_4' value='1' />
            <input type='hidden' class='gform_hidden' name='gform_submit' value='4' />
            <input type='hidden' class='gform_hidden' name='gform_unique_id' value='' />
            <input type='hidden' class='gform_hidden' name='state_4' value='WyJhOjA6e30iLCJmMjE2MmM2ZjUxYmQ4M2Q3ZmMzNzVlNmY2ODYyZTI2NCJd' />
            <input type='hidden' class='gform_hidden' name='gform_target_page_number_4' id='gform_target_page_number_4' value='0' />
            <input type='hidden' class='gform_hidden' name='gform_source_page_number_4' id='gform_source_page_number_4' value='1' />
            <input type='hidden' name='gform_field_values' value='' />

        </div>
                </form>
                </div>
                <iframe style='display:none;width:0px; height:0px;' src='about:blank' name='gform_ajax_frame_4' id='gform_ajax_frame_4'></iframe>
                <script type='text/javascript'>
                <xsl:text disable-output-escaping="yes">//&lt;![CDATA[<![CDATA[
                    function gformInitSpinner_4(){jQuery('#gform_4').submit(function(){if(jQuery('#gform_ajax_spinner_4').length == 0){jQuery('#gform_submit_button_4, #gform_wrapper_4 .gform_next_button, #gform_wrapper_4 .gform_image_button').after('<' + 'img id="gform_ajax_spinner_4"  class="gform_ajax_spinner" src="//www.elasticsearch.org/content/plugins/gravityforms/images/spinner.gif" alt="" />'); }} );}jQuery(document).ready(function($){gformInitSpinner_4();jQuery('#gform_ajax_frame_4').load( function(){var contents = jQuery(this).contents().find('*').html();var is_postback = contents.indexOf('GF_AJAX_POSTBACK') >= 0;if(!is_postback){return;}var form_content = jQuery(this).contents().find('#gform_wrapper_4');var is_redirect = contents.indexOf('gformRedirect(){') >= 0;var is_form = !(form_content.length <= 0 || is_redirect);if(is_form){jQuery('#gform_wrapper_4').html(form_content.html());jQuery(document).scrollTop(jQuery('#gform_wrapper_4').offset().top);if(window['gformInitDatepicker']) {gformInitDatepicker();}if(window['gformInitPriceFields']) {gformInitPriceFields();}var current_page = jQuery('#gform_source_page_number_4').val();gformInitSpinner_4();jQuery(document).trigger('gform_page_loaded', [4, current_page]);window['gf_submitting_4'] = false;}else if(!is_redirect){var confirmation_content = jQuery(this).contents().find('#gforms_confirmation_message').html();if(!confirmation_content){confirmation_content = contents;}setTimeout(function(){jQuery('#gform_wrapper_4').replaceWith('<' + 'div id=\'gforms_confirmation_message\' class=\'gform_confirmation_message_4\'' + '>' + confirmation_content + '<' + '/div' + '>');jQuery(document).scrollTop(jQuery('#gforms_confirmation_message').offset().top);jQuery(document).trigger('gform_confirmation_loaded', [4]);window['gf_submitting_4'] = false;}, 50);}else{jQuery('#gform_4').append(contents);if(window['gformRedirect']) {gformRedirect();}}jQuery(document).trigger('gform_post_render', [4, current_page]);} );} );</script><script type='text/javascript'> jQuery(document).ready(function(){jQuery(document).trigger('gform_post_render', [4, 1]) } );
                    ]]>//]]&gt;</xsl:text>
                </script>
                    </div>
                                <div class="legal">
                    <p>© 2014 All Rights Reserved - Elasticsearch </p>
                    <p>Apache Lucene and Lucene are trademarks of the Apache Software Foundation</p>
                </div>
            </div>
        </div>
    </footer>
    <section id="cookie">
        <div class="container">
            <div class="eu">
                Elasticsearch uses cookies to provide a better user experience to visitors of our website. Read more about our cookie policy <a href="/privacy-and-cookie-policy/">here.</a>                <a data-action="accept" class="cta">Accept cookies</a>
            </div>
            <div class="uk">
                Elasticsearch uses cookies to provide a better user experience to visitors of our website. Read more about our cookie policy <a href="/privacy-and-cookie-policy/">here.</a>                <a data-action="dismiss" class="cta dismiss">X</a>
            </div>
        </div>
    </section>
    <!-- Custom JS API -->
    <script type="text/javascript"><![CDATA[
      if (window.aiModifyParent) aiModifyParent();
      (function ($, $a, $title, $list) {
        $a = $('[id^="js-api-method-index"]');
        if (!$a.size()) return;
        $('.guide_content').addClass('js-client-docs');
        $list = $a.siblings('.itemizedlist').detach();
        $title = $(document.createElement('h2')).text('api methods')
        $a.parent().remove();
        $('.toc').first().append($(document.createElement('div')).addClass('js-api-method-index').append($title).append($list));
      }(jQuery));
    ]]></script>
    <!-- / Custom JS API -->

<script type="text/javascript">if(window.aiModifyParent) {aiModifyParent();}</script><script type='text/javascript' src='//www.elasticsearch.org/content/plugins/prettify-gc-syntax-highlighter/prettify.js?ver=3.5.2'></script>
<script type='text/javascript' src='//www.elasticsearch.org/content/plugins/prettify-gc-syntax-highlighter/launch.js?ver=3.5.2'></script>
<script type='text/javascript' src='//s0.wp.com/wp-content/js/devicepx-jetpack.js?ver=201413'></script>
<script type='text/javascript' src='//www.elasticsearch.org/content/themes/elasticsearch-org/js/global.min.js?ver=1395082599'></script>
<script type='text/javascript' src='//www.elasticsearch.org/content/themes/elasticsearch-org/js/froogaloop.min.js?ver=1'></script>
   </xsl:template>

</xsl:stylesheet>
