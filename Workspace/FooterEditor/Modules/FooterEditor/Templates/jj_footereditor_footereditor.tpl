<section class="footereditor-info-card">
    <div class="container-fluid">
        <div class="row" id="signupRow">
            <div class="col-md-6 col-sm-12" id="signupMessage">
                <b>Sign up to get new and exclusive offers to your inbox!</b>
            </div>
            <div class="col-md-6 col-sm-12" id="emailAdder">
                <div>
                    <input type="email" placeholder="username@domain">
                </div>
                <div>
                    <button>
                        Subscribe
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="button-icon">
                            <path d="M224 0c-17.7 0-32 14.3-32 32l0 19.2C119 66 64 130.6 64 208l0 18.8c0 47-17.3 92.4-48.5 127.6l-7.4 8.3c-8.4 9.4-10.4 22.9-5.3 34.4S19.4 416 32 416l384 0c12.6 0 24-7.4 29.2-18.9s3.1-25-5.3-34.4l-7.4-8.3C401.3 319.2 384 273.9 384 226.8l0-18.8c0-77.4-55-142-128-156.8L256 32c0-17.7-14.3-32-32-32zm45.3 493.3c12-12 18.7-28.3 18.7-45.3l-64 0-64 0c0 17 6.7 33.3 18.7 45.3s28.3 18.7 45.3 18.7s33.3-6.7 45.3-18.7z"/>
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        {{let i = 0}}
        <div class="row" id="secondFooter">
            <div class="col-md-6 col-sm-6 col-12" id="companyDetails">
                <a href="{{columns.column1.0.value}}">
                    <i class="support-ico fa fa-phone" style="transform: scaleX(-1);"></i>&nbsp;&nbsp;&nbsp;{{columns.column1.0.phone}}
                </a><br>
                <a href="{{columns.column1.1.value}}">
                    <i class="support-ico fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;{{columns.column1.1.email}}
                </a><br>
                <h2 id="storeName">{{columns.column1.2.storeName}}</h2>
                <a id="storeAddress">{{columns.column1.3.address}}</a><br>
                <img src={{columns.column1.4.logo}} id="footerLogo">
            </div>
            <div class="col-md-2 col-sm-3 col-12 detailColumn">
                <h2>INFORMATION</h2>
                {{#each columns.column2}}
                    <a href="{{this.href}}">{{this.text}}</a><br>
                {{/each}}
            </div>
            <div class="col-md-2 col-sm-3 col-12">
                <h2>My Account</h2>
                {{#each columns.column3}}
                    <a href="{{this.href}}">{{this.text}}</a><br>
                {{/each}}
            </div>
            <div class="col-md-2 col-sm-3 col-12">
                <h2>social</h2>
                {{#each columns.column4}}
                    <a href="{{this.href}}" class="icon">
                        <i class="fa-brands fa-{{this.icon}}" style="font-size: 1.5em;"></i>
                    </a>
                {{/each}}
            </div>
        </div>
    </div>
    <span class="footereditor-info-card-content">
        &copy; Balaji Trading, Inc. 2023 All Rights Reserved.
    </span>
</section>
<script type="text/javascript">
    (function() {
        var fontAwesomeLink = document.createElement("link");
        fontAwesomeLink.rel = "stylesheet";
        fontAwesomeLink.href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css";
        fontAwesomeLink.crossOrigin = "anonymous";
        fontAwesomeLink.referrerPolicy = "no-referrer";
        document.head.appendChild(fontAwesomeLink);
    })();
</script>

<!--
  Available helpers:
  {{ getExtensionAssetsPath "img/image.jpg"}} - reference assets in your extension
  
  {{ getExtensionAssetsPathWithDefault context_var "img/image.jpg"}} - use context_var value i.e. configuration variable. If it does not exist, fallback to an asset from the extension assets folder
  
  {{ getThemeAssetsPath context_var "img/image.jpg"}} - reference assets in the active theme
  
  {{ getThemeAssetsPathWithDefault context_var "img/theme-image.jpg"}} - use context_var value i.e. configuration variable. If it does not exist, fallback to an asset from the theme assets folder
-->
