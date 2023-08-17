.class public Lcom/samsung/android/penup/internal/request/RequestThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

.field private mCollectionName:Ljava/lang/String;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHttpMethod:Lcom/samsung/android/penup/internal/HttpMethod;

.field private mImageUri:Landroid/net/Uri;

.field private mRequestUrl:Ljava/lang/String;

.field private mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/penup/ResourceCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseResult:Lcom/samsung/android/penup/ResponseResult;

.field private mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/penup/ResponseResult;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/penup/ResponseResult;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/internal/HttpMethod;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mRequestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHttpMethod:Lcom/samsung/android/penup/internal/HttpMethod;

    iput-object p4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p5, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/internal/HttpMethod;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceListCallback<",
            "+",
            "Lcom/samsung/android/penup/model/Resource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mRequestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHttpMethod:Lcom/samsung/android/penup/internal/HttpMethod;

    iput-object p4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p5, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/penup/model/ArtworkResource;Landroid/net/Uri;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/model/ArtworkResource;",
            "Landroid/net/Uri;",
            "Lcom/samsung/android/penup/internal/HttpMethod;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "Lcom/samsung/android/penup/model/ArtworkResource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mRequestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    iput-object p4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mImageUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHttpMethod:Lcom/samsung/android/penup/internal/HttpMethod;

    iput-object p6, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p7, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/penup/internal/HttpMethod;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/penup/internal/HttpMethod;",
            "Lcom/samsung/android/penup/internal/response/ResponseType;",
            "Lcom/samsung/android/penup/ResourceCallback<",
            "Lcom/samsung/android/penup/model/CollectionResource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mRequestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mCollectionName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHttpMethod:Lcom/samsung/android/penup/internal/HttpMethod;

    iput-object p5, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iput-object p6, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendErrorResult(Lcom/samsung/android/penup/ResponseResult;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/response/ResponseType;->isResponseListType()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/penup/internal/response/ResponseCallback;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/penup/internal/response/ResponseCallback;-><init>(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/ResourceListCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/penup/internal/response/ResponseCallback;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/penup/internal/response/ResponseCallback;-><init>(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/ResourceCallback;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseResult:Lcom/samsung/android/penup/ResponseResult;

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/penup/internal/request/RequestThread;->sendErrorResult(Lcom/samsung/android/penup/ResponseResult;)V

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/request/RequestUtil;->getKeyHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHttpMethod:Lcom/samsung/android/penup/internal/HttpMethod;

    sget-object v3, Lcom/samsung/android/penup/internal/HttpMethod;->GET:Lcom/samsung/android/penup/internal/HttpMethod;

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mRequestUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/penup/internal/request/RequestUtil;->getResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/penup/internal/HttpMethod;->POST:Lcom/samsung/android/penup/internal/HttpMethod;

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mArtworkResource:Lcom/samsung/android/penup/model/ArtworkResource;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mRequestUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mImageUri:Landroid/net/Uri;

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/penup/internal/request/RequestUtil;->uploadArtwork(Ljava/lang/String;Lcom/samsung/android/penup/model/ArtworkResource;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mRequestUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mCollectionName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/penup/internal/request/RequestUtil;->addCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/response/ResponseType;->isResponseListType()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/penup/internal/response/ResponseCallback;

    iget-object v3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iget-object v4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceListCallback:Lcom/samsung/android/penup/ResourceListCallback;

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/penup/internal/response/ResponseCallback;-><init>(Ljava/lang/String;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceListCallback;)V

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/penup/internal/response/ResponseCallback;

    iget-object v3, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResponseType:Lcom/samsung/android/penup/internal/response/ResponseType;

    iget-object v4, p0, Lcom/samsung/android/penup/internal/request/RequestThread;->mResourceCallback:Lcom/samsung/android/penup/ResourceCallback;

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/penup/internal/response/ResponseCallback;-><init>(Ljava/lang/String;Lcom/samsung/android/penup/internal/response/ResponseType;Lcom/samsung/android/penup/ResourceCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v1, 0x2328

    const-string v2, "The network connection error occurred."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v1, 0x2329

    const-string v2, "The timeout is exceeded."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    new-instance v0, Lcom/samsung/android/penup/ResponseResult;

    const/16 v1, 0x3e8

    const-string v2, "The internal server error occurred."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/penup/ResponseResult;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :goto_3
    return-void
.end method
