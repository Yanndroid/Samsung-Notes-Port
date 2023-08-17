.class public Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;
.super Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
.source "SourceFile"


# static fields
.field public static final CACHE_RESPONSE_STATUS:Ljava/lang/String; = "http.cache.response.status"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method

.method public static adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;
    .locals 1

    instance-of v0, p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;

    if-eqz v0, :cond_0

    check-cast p0, Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;

    return-object p0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-object v0
.end method

.method public static create()Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-object v0
.end method


# virtual methods
.method public getCacheResponseStatus()Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;
    .locals 2

    const-class v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    const-string v1, "http.cache.response.status"

    invoke-virtual {p0, v1, v0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/cache/CacheResponseStatus;

    return-object v0
.end method
