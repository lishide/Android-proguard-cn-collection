# # 2. 针对 App 的量身定制============================================================================
# ## 2.1 保留实体类和成员不被混淆-----------------------------------------------
# 例如（替换成你的包名结构）：
-keep class com.yourpackage.app.model.entity.** {
    public void set*(***);
    public *** get*();
    public *** is*();
}
#---------------------------------------------------------------------------

# ## 2.2 内嵌类--------------------------------------------------------------

#---------------------------------------------------------------------------

# ## 2.3 webview------------------------------------------------------------
-keepclassmembers class fqcn.of.javascript.interface.for.Webview {
   public *;
}
-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, java.lang.String, android.graphics.Bitmap);
    public boolean *(android.webkit.WebView, java.lang.String);
}
-keepclassmembers class * extends android.webkit.WebViewClient {
    public void *(android.webkit.WebView, jav.lang.String);
}
#---------------------------------------------------------------------------

# ## 2.4 对 JavaScript 的处理------------------------------------------------
# 保留 JS 方法不被混淆
#-keepclassmembers class com.example.xxx.MainActivity$JSInterface1 {
#    <methods>;
#}
#---------------------------------------------------------------------------

# ## 2.5 处理反射------------------------------------------------------------

#---------------------------------------------------------------------------

# ## 2.6 对于自定义 View 的解决方案--------------------------------------------
-keep class com.yourpackage.a.** { *; }
#---------------------------------------------------------------------------
#===================================================================================================
