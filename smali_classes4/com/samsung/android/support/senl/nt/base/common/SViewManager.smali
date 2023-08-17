.class public Lcom/samsung/android/support/senl/nt/base/common/SViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;,
        Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;,
        Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SViewManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;


# instance fields
.field private isCoverSupported:Z

.field private mContextHashCode:I

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverState:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegistedID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->isCoverSupported:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->NEED_TO_CHECK:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverState:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mRegistedID:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mContextHashCode:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/SViewManager;Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverState:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/common/SViewManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->callStageChangedListeners(Z)V

    return-void
.end method

.method private callStageChangedListeners(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->removeListenerFromList(I)V

    goto :goto_1

    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;->onCoverStateChanged(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private containsListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->removeListenerFromList(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method private disableScoverManager()V
    .locals 4

    const-string v0, "SViewManager"

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->NEED_TO_CHECK:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverState:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    :try_start_0
    const-string v1, "disableScoverManager"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    const-string v1, "disableScoverManager] success"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableScoverManager] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "disableScoverManager] got exception from unregisterListener"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private enableScoverManager(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "SViewManager"

    const-string v1, "enableScoverManager"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->NEED_TO_CHECK:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverState:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/SViewManager;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V

    const-string p1, "enableScoverManager] success"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->isCoverSupported:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->OPENED:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverState:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableScoverManager] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "got exception in enableScoverManager"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/SViewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerID(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mRegistedID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mRegistedID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->removeListenerFromList(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private removeListenerFromList(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private unregisterID(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mRegistedID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mRegistedID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCoverType()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    const-string v1, "SViewManager"

    if-nez v0, :cond_0

    const-string v0, "getCoverType: getCoverState is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCoverType type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCoverWindowHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v0

    return v0
.end method

.method public getCoverWindowWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v0

    return v0
.end method

.method public isCoverClosed(Landroid/content/Context;Z)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$2;->$SwitchMap$com$samsung$android$support$senl$nt$base$common$SViewManager$CoverState:[I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverState:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->isCoverSupported:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    :goto_0
    if-nez p2, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1

    :cond_6
    return v2
.end method

.method public isRegistered(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mRegistedID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized register(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mContextHashCode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->registerID(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->disableScoverManager()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->enableScoverManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mContextHashCode:I

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->registerID(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mContextHashCode:I

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->unregisterID(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->containsListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerListener: mListener.count = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SViewManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized unregister(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->unregisterID(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mRegistedID:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->disableScoverManager()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->containsListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->removeListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterListener: mListener.count = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SViewManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
