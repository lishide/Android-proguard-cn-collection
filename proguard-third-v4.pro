# # 3. 针对第三方 jar 包的解决方案=====================================================================
# ## 3.1 针对 android-support-v4.jar 的解决方案-------------------------------
# 如果是直接包含的 jar 包的话，这样写
# 如果 gradle 报错的话，可以考虑注释掉 -libraryjars
#-libraryjars libs/android-support-v4.jar
-dontwarn android.support.v4.**
-keep class android.support.v4.** { *; }
-keep interface android.support.v4.app.** { *; }
-keep public class * extends android.support.v4.**
-keep public class * extends android.app.Fragment
#---------------------------------------------------------------------------

# ## 3.2 其他的第三方 jar 包的解决方案-----------------------------------------

#---------------------------------------------------------------------------
#===================================================================================================
