-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable


-keep class android.support.v7.widget.SearchView { *; }
-keep class androidx.appcompat.widget.SearchView { *; }

-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn org.conscrypt.**

-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

-dontwarn com.google.firebase.messaging.**

-dontwarn com.fasterxml.**
-dontwarn retrofit2.**

-dontwarn com.daimajia.**

-keepclassmembers class **.*$PaymentJavaScriptInterface{
public *;
}


-keepattributes Signature, InnerClasses

-keepclassmembers,allowshrinking,allowobfuscation interface * {
    @retrofit2.http.* <methods>;
}

-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement

-dontwarn javax.annotation.**


-keepclassmembernames,allowobfuscation interface * {
    @retrofit2.http.* <methods>;
}

-keepclassmembers,allowshrinking,allowobfuscation interface * { @retrofit2.http.** <methods>; }

-keep class com.squareup.** { *; }
-keep interface com.squareup.** { *; }
-dontwarn com.squareup.okhttp.**
-keep class retrofit.** { *; }

-keepclasseswithmembers class * {
    @retrofit.http.* <methods>;
}

-keep interface retrofit.** { *;}
-keep interface com.squareup.** { *; }
-dontwarn rx.**
-dontwarn retrofit.**

##---------------Begin: proguard configuration for Gson  ----------
# Gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
-keepattributes Signature

# For using GSON @Expose annotation
-keepattributes *Annotation*

# Gson specific classes
-dontwarn sun.misc.**
#-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** { <fields>; }

# Prevent proguard from stripping interface information from TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

# Prevent R8 from leaving Data object members always null
-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
}

##---------------End: proguard configuration for Gson  ----------



