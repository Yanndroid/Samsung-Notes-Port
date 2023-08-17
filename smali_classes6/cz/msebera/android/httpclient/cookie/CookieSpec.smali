.class public interface abstract Lcz/msebera/android/httpclient/cookie/CookieSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract formatCookies(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()I
    .annotation build Lcz/msebera/android/httpclient/annotation/Obsolete;
    .end annotation
.end method

.method public abstract getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .annotation build Lcz/msebera/android/httpclient/annotation/Obsolete;
    .end annotation
.end method

.method public abstract match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
.end method

.method public abstract parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
.end method
