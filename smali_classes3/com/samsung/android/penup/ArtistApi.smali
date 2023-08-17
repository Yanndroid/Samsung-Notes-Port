.class public Lcom/samsung/android/penup/ArtistApi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtist(Lcom/samsung/android/penup/PenupClient;Ljava/lang/String;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/PenupClient;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "Lcom/samsung/android/penup/model/ArtistResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "penupClient"

    invoke-static {p0, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistId"

    invoke-static {p1, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resourceCallback"

    invoke-static {p2, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/internal/session/Session;->checkAccessToken(Lcom/samsung/android/penup/PenupClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/penup/internal/request/RequestUrl;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "artist"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/session/Session;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/request/RequestUrl;->getUrlString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/penup/internal/HttpMethod;->GET:Lcom/samsung/android/penup/internal/HttpMethod;

    sget-object v6, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/penup/ResponseResult;

    const/16 v0, 0xbb8

    const-string v1, "The authentication is required."

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public static getMyFollowers(Lcom/samsung/android/penup/PenupClient;ILjava/lang/String;Lcom/samsung/android/penup/ResourceListCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/PenupClient;",
            "I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "Lcom/samsung/android/penup/model/ArtistResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "penupClient"

    invoke-static {p0, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxResults"

    invoke-static {p1, v0}, Lcom/samsung/android/penup/internal/Validator;->checkMaxResults(ILjava/lang/String;)V

    const-string v0, "resourceListCallback"

    invoke-static {p3, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/internal/session/Session;->checkAccessToken(Lcom/samsung/android/penup/PenupClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/penup/internal/request/RequestUrl;

    const-string v1, "me"

    const-string v2, "follower"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/session/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/penup/internal/Validator;->checkPageToken(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "after"

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/request/RequestUrl;->getUrlString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/penup/internal/HttpMethod;->GET:Lcom/samsung/android/penup/internal/HttpMethod;

    sget-object v5, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/penup/ResponseResult;

    const/16 p2, 0xbb8

    const-string v0, "The authentication is required."

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    new-instance p2, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public static getMyFollowingArtists(Lcom/samsung/android/penup/PenupClient;ILjava/lang/String;Lcom/samsung/android/penup/ResourceListCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/PenupClient;",
            "I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "Lcom/samsung/android/penup/model/ArtistResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "penupClient"

    invoke-static {p0, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxResults"

    invoke-static {p1, v0}, Lcom/samsung/android/penup/internal/Validator;->checkMaxResults(ILjava/lang/String;)V

    const-string v0, "resourceListCallback"

    invoke-static {p3, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/internal/session/Session;->checkAccessToken(Lcom/samsung/android/penup/PenupClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/penup/internal/request/RequestUrl;

    const-string v1, "me"

    const-string v2, "following"

    const-string v3, "artist"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/session/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/penup/internal/Validator;->checkPageToken(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "after"

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/request/RequestUrl;->getUrlString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/penup/internal/HttpMethod;->GET:Lcom/samsung/android/penup/internal/HttpMethod;

    sget-object v5, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/penup/ResponseResult;

    const/16 p2, 0xbb8

    const-string v0, "The authentication is required."

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    new-instance p2, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public static getMyProfile(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/PenupClient;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "Lcom/samsung/android/penup/model/ArtistResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "penupClient"

    invoke-static {p0, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceCallback"

    invoke-static {p1, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/internal/session/Session;->checkAccessToken(Lcom/samsung/android/penup/PenupClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/penup/internal/request/RequestUrl;

    const-string v1, "me"

    const-string v2, "profile"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/session/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/request/RequestUrl;->getUrlString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/penup/internal/HttpMethod;->GET:Lcom/samsung/android/penup/internal/HttpMethod;

    sget-object v7, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    move-object v3, v1

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v1, 0xbb8

    const-string v2, "The authentication is required."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getPopularArtists(Lcom/samsung/android/penup/PenupClient;ILjava/lang/String;Lcom/samsung/android/penup/ResourceListCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/PenupClient;",
            "I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "Lcom/samsung/android/penup/model/ArtistResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "penupClient"

    invoke-static {p0, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxResults"

    invoke-static {p1, v0}, Lcom/samsung/android/penup/internal/Validator;->checkMaxResults(ILjava/lang/String;)V

    const-string v0, "resourceListCallback"

    invoke-static {p3, v0}, Lcom/samsung/android/penup/internal/Validator;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/penup/internal/session/Session;->checkAccessToken(Lcom/samsung/android/penup/PenupClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/penup/internal/request/RequestUrl;

    const-string v1, "artist"

    const-string v2, "popular"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getSession()Lcom/samsung/android/penup/internal/session/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/session/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/penup/internal/Validator;->checkPageToken(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "after"

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/penup/internal/request/RequestUrl;->addQueryString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/request/RequestUrl;->getUrlString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/penup/internal/HttpMethod;->GET:Lcom/samsung/android/penup/internal/HttpMethod;

    sget-object v5, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/penup/ResponseResult;

    const/16 p2, 0xbb8

    const-string v0, "The authentication is required."

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    new-instance p2, Lcom/samsung/android/penup/internal/request/RequestThread;

    invoke-virtual {p0}, Lcom/samsung/android/penup/PenupClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/penup/internal/response/ResponseType;->ARTIST_LIST:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/samsung/android/penup/internal/request/RequestThread;-><init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
