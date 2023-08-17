.class public Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenDvfsManager"


# instance fields
.field private mDvfsExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mIsEnabled:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsExecutor:Ljava/util/concurrent/ExecutorService;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsCompat;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    goto :goto_0

    :cond_0
    const-string p1, "SpenDvfsManager"

    const-string v1, "S OS does not support SpenDvfsManager. If you want to use DvfsManager for performance, please contact developer of SPenSDK."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    if-eqz v0, :cond_1

    const-string v0, "SpenDvfsManager"

    const-string v1, "SpenDvfsManager fling acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;->acquire()V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "SpenDvfsManager"

    const-string v1, "SpenDvfsManager close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;->release()V

    :cond_1
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mIsEnabled:Z

    return v0
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    if-eqz v0, :cond_1

    const-string v0, "SpenDvfsManager"

    const-string v1, "SpenDvfsManager fling release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;->release()V

    :cond_1
    return-void
.end method

.method public setDvfsFling(Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mDvfsFling:Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->mIsEnabled:Z

    return-void
.end method
