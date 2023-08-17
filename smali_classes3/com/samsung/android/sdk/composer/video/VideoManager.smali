.class public Lcom/samsung/android/sdk/composer/video/VideoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_MAX:I = 0x5

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAY:I = 0x1

.field public static final STATE_RESUME:I = 0x3

.field public static final STATE_STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoManager"

.field private static mIsAddCallbackListener:Z

.field private static mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/video/SpenVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mState:I

.field private static mSync:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mIsAddCallbackListener:Z

    sput v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Native_GetObjectVideo()Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;
.end method

.method private static native Native_SetObject(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V
.end method

.method private static native Native_SetState(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;I)V
.end method

.method private static native Native_SetStateListener()V
.end method

.method private static addCallbackListener()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mIsAddCallbackListener:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/video/VideoManager;->Native_SetStateListener()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mIsAddCallbackListener:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public static addListener(Lcom/samsung/android/sdk/composer/video/SpenVideoListener;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "VideoManager"

    const-string v0, "[addListener] got empty observer"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getObjectVideo()Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/video/VideoManager;->Native_GetObjectVideo()Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;

    move-result-object v0

    return-object v0
.end method

.method public static getState()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mState:I

    return v0
.end method

.method public static initialize()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/composer/video/VideoManager;->addCallbackListener()V

    return-void
.end method

.method private static onPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;->onPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;->onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onPositionUpdated(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;Landroid/graphics/RectF;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;->onPositionUpdated(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;->onResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static onStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;

    invoke-interface {v2, p0}, Lcom/samsung/android/sdk/composer/video/SpenVideoListener;->onStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeListener(Lcom/samsung/android/sdk/composer/video/SpenVideoListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setObject(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/video/VideoManager;->addCallbackListener()V

    sget-object v0, Lcom/samsung/android/sdk/composer/video/VideoManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/composer/video/VideoManager;->Native_SetObject(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setState(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    sput p1, Lcom/samsung/android/sdk/composer/video/VideoManager;->mState:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/video/VideoManager;->Native_SetState(Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;I)V

    return-void
.end method
