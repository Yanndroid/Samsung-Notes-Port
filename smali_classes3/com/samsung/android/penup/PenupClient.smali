.class public final Lcom/samsung/android/penup/PenupClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penup/PenupClient$Builder;,
        Lcom/samsung/android/penup/PenupClient$ConnectionCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "PenupClient"

.field private static sNetworkErrorHandler:Landroid/os/Handler;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mAuthDialogFragment:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

.field private mClientId:Ljava/lang/String;

.field private mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDialog:Lcom/samsung/android/penup/internal/dialog/PostDialog;

.field private mScopeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/samsung/android/penup/internal/session/Session;

.field private mSsoManager:Lcom/samsung/android/penup/internal/sso/SsoManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/penup/PenupClient$1;

    invoke-direct {v0}, Lcom/samsung/android/penup/PenupClient$1;-><init>()V

    sput-object v0, Lcom/samsung/android/penup/PenupClient;->sNetworkErrorHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/penup/PenupClient;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/penup/PenupClient$ConnectionCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/penup/PenupClient;->lock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/Url;->initBaseUrl(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/PenupClient;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/penup/PenupClient;->mClientId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/penup/PenupClient;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient;->mScopeList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    new-instance p1, Lcom/samsung/android/penup/internal/session/Session;

    iget-object p4, p0, Lcom/samsung/android/penup/PenupClient;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4, p2, p3}, Lcom/samsung/android/penup/internal/session/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient;->mSession:Lcom/samsung/android/penup/internal/session/Session;

    iget-object p1, p0, Lcom/samsung/android/penup/PenupClient;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    invoke-static {p0, p1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->newInstance(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient;->mAuthDialogFragment:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    new-instance p1, Lcom/samsung/android/penup/internal/sso/SsoManager;

    iget-object p2, p0, Lcom/samsung/android/penup/PenupClient;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/penup/internal/sso/SsoManager;-><init>(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient;->mSsoManager:Lcom/samsung/android/penup/internal/sso/SsoManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient;->mPostDialog:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;Lcom/samsung/android/penup/PenupClient$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/penup/PenupClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/penup/PenupClient$ConnectionCallback;)V

    return-void
.end method

.method public static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/penup/PenupClient;->sNetworkErrorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/samsung/android/penup/PenupClient;)Lcom/samsung/android/penup/PenupClient$ConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/PenupClient;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    return-object p0
.end method


# virtual methods
.method public checkScope(Lcom/samsung/android/penup/Scope;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->mScopeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/penup/Scope;->getScope()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public connect()V
    .locals 4

    sget-object v0, Lcom/samsung/android/penup/PenupClient;->TAG:Ljava/lang/String;

    const-string v1, "[PENUP SDK] Version - 1.1.47"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/penup/internal/Validator;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mSession:Lcom/samsung/android/penup/internal/session/Session;

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/session/Session;->clear()V

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mSsoManager:Lcom/samsung/android/penup/internal/sso/SsoManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->requestSso()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mAuthDialogFragment:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mAuthDialogFragment:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/penup/PenupClient;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AuthDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/penup/PenupClient$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/penup/PenupClient$2;-><init>(Lcom/samsung/android/penup/PenupClient;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mSession:Lcom/samsung/android/penup/internal/session/Session;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/session/Session;->clear()V

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mSession:Lcom/samsung/android/penup/internal/session/Session;

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/session/Session;->clearContext()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mAuthDialogFragment:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;->removeCookie()V

    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mAuthDialogFragment:Lcom/samsung/android/penup/internal/dialog/AuthDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mPostDialog:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mSsoManager:Lcom/samsung/android/penup/internal/sso/SsoManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/penup/internal/sso/SsoManager;->release()V

    iput-object v2, p0, Lcom/samsung/android/penup/PenupClient;->mSsoManager:Lcom/samsung/android/penup/internal/sso/SsoManager;

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/penup/PenupClient;->mContext:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Lcom/samsung/android/penup/PenupClient;->mConnectionCallback:Lcom/samsung/android/penup/PenupClient$ConnectionCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getScopeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->mScopeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSession()Lcom/samsung/android/penup/internal/session/Session;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mSession:Lcom/samsung/android/penup/internal/session/Session;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/PenupClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/penup/PenupClient;->mSession:Lcom/samsung/android/penup/internal/session/Session;

    invoke-virtual {v1, p0}, Lcom/samsung/android/penup/internal/session/Session;->checkAccessToken(Lcom/samsung/android/penup/PenupClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPostDialog(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/PenupClient;->mPostDialog:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    return-void
.end method
