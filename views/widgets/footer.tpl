<div class="footer">
    <div class="container">
        <div class="row text-center border-top">
            <span>©<script>document.write(new Date().getFullYear())</script> {{.SITE_NAME}}</span>
        </div>
        {{if ne .site_beian ""}}
        <div class="row text-center">
            <a href="http://www.miitbeian.gov.cn" target="_blank">{{.site_beian}}</a>
        </div>
        {{end}}
    </div>
</div>