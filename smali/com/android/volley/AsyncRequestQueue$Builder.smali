.class public Lcom/android/volley/AsyncRequestQueue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAsyncCache:Lcom/android/volley/AsyncCache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCache:Lcom/android/volley/Cache;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mNetwork:Lcom/android/volley/AsyncNetwork;

.field private mResponseDelivery:Lcom/android/volley/ResponseDelivery;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncNetwork;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mNetwork:Lcom/android/volley/AsyncNetwork;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Network cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDefaultExecutorFactory()Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
    .locals 1

    new-instance v0, Lcom/android/volley/AsyncRequestQueue$Builder$1;

    invoke-direct {v0, p0}, Lcom/android/volley/AsyncRequestQueue$Builder$1;-><init>(Lcom/android/volley/AsyncRequestQueue$Builder;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/volley/AsyncRequestQueue;
    .locals 8

    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must set one of the cache objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/android/volley/AsyncRequestQueue$ThrowingCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/volley/AsyncRequestQueue$ThrowingCache;-><init>(Lcom/android/volley/AsyncRequestQueue$1;)V

    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    :cond_2
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    :cond_3
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/volley/AsyncRequestQueue$Builder;->getDefaultExecutorFactory()Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    :cond_4
    new-instance v0, Lcom/android/volley/AsyncRequestQueue;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mNetwork:Lcom/android/volley/AsyncNetwork;

    iget-object v4, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    iget-object v5, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    iget-object v6, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/AsyncRequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/AsyncNetwork;Lcom/android/volley/AsyncCache;Lcom/android/volley/ResponseDelivery;Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;Lcom/android/volley/AsyncRequestQueue$1;)V

    return-object v0
.end method

.method public setAsyncCache(Lcom/android/volley/AsyncCache;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mAsyncCache:Lcom/android/volley/AsyncCache;

    return-object p0
.end method

.method public setCache(Lcom/android/volley/Cache;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mCache:Lcom/android/volley/Cache;

    return-object p0
.end method

.method public setExecutorFactory(Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mExecutorFactory:Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;

    return-object p0
.end method

.method public setResponseDelivery(Lcom/android/volley/ResponseDelivery;)Lcom/android/volley/AsyncRequestQueue$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder;->mResponseDelivery:Lcom/android/volley/ResponseDelivery;

    return-object p0
.end method
