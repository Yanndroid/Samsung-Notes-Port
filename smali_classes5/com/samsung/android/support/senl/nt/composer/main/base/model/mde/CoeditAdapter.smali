.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

.field private mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCoeditEnabled:Z

.field private mIsCoeditNote:Z

.field private mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

.field private mNoTimeoutPauseCallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenChannelCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

.field private mPauseCallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CoeditAdapter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/EmptyCoeditController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/EmptyCoeditController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mIsCoeditEnabled:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    return-object p0
.end method

.method private clearCallback(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "# clear snap callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mOpenChannelCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "# clear channel callback"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mOpenChannelCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mOpenChannelCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    :cond_1
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getNoTimeoutPauseCallers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mNoTimeoutPauseCallers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mNoTimeoutPauseCallers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mNoTimeoutPauseCallers:Ljava/util/List;

    return-object v0
.end method

.method private getPauseCallers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mPauseCallers:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mPauseCallers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mPauseCallers:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public checkDeleteOnlyMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->checkDeleteOnlyMode()V

    return-void
.end method

.method public clearCoeditCallback()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->clearCoeditCallback()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    const-string v2, "clearCoeditCallback# clear connection callback"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    :cond_0
    const-string v0, "clearCoeditCallback"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->clearCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public internalSnapRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->internalSnapRefresh()V

    return-void
.end method

.method public isCoeditMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->isCoeditMode()Z

    move-result v0

    return v0
.end method

.method public isCoeditNote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mIsCoeditNote:Z

    return v0
.end method

.method public isCoeditNote(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->COEDIT_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mIsCoeditEnabled:Z

    return v0
.end method

.method public openCoeditChannel(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mOpenChannelCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->internalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    return-void
.end method

.method public pauseCoedit(Ljava/lang/String;Ljava/lang/Runnable;)I
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    const-string v2, "AUTO_RELEASE_COMPOSER_REQUEST"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->pauseConcurrency(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->getPauseCallers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseCoedit# caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cancelAction: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    const-string p1, "null"

    goto :goto_0

    :cond_2
    const-string p1, "exist"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public pauseCoeditNoTimeout(Ljava/lang/String;)I
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    const-string v2, "INFINITY_COMPOSER_REQUEST"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->pauseConcurrency(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->getNoTimeoutPauseCallers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseCoeditNoTimeout# caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readyCoedit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->readyCoedit(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public reopenCoedit(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 2

    const-string v0, "reopenCoedit"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->clearCallback(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mOpenChannelCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    invoke-interface {p3, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    return-void
.end method

.method public requestServerReadPermission()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->requestReadPermission()V

    return-void
.end method

.method public resumeCoedit(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->getPauseCallers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCoedit# no exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->getPauseCallers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    const-string v1, "AUTO_RELEASE_COMPOSER_REQUEST"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->resumeConcurrency(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCoedit# remain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->getPauseCallers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeCoedit# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public resumeCoeditNoTimeout(Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->getNoTimeoutPauseCallers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeCoeditNoTimeout# no exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    const-string v1, "INFINITY_COMPOSER_REQUEST"

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->resumeConcurrency(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeCoeditNoTimeout# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public saveCoeditCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->saveCoeditCache()V

    return-void
.end method

.method public setCoeditController(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    return-void
.end method

.method public setCoeditEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mIsCoeditEnabled:Z

    return-void
.end method

.method public setCoeditListener(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->setCoeditServiceContract(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V

    return-void
.end method

.method public setCoeditNote(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mIsCoeditNote:Z

    return-void
.end method

.method public setMdeInfoResolver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    return-void
.end method

.method public snapCoedit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p5, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->isSessionConnected()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mMdeInfoResolver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;

    new-instance v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver;->requestConnectSessionAsync(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mSnapCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    return-void
.end method

.method public takeServerWritePermission()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->isWritePermissionGranted()Z

    move-result v0

    return v0
.end method

.method public trimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->trimMemory(I)V

    return-void
.end method

.method public waitConnection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)Z
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mCoeditController:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->waitConnection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    :cond_0
    return p1
.end method
