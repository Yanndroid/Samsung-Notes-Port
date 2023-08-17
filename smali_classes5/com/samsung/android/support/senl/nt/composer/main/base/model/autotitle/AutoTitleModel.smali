.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_WAIT_TO_WORKING_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TO_WORKING_STATE_CHANGED_DELAY:I = 0x3e8

.field private static final sExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mChangedPageIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

.field private mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

.field private mRecommendedTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleListUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "AutoTitleModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mChangedPageIdList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mChangedPageIdList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    return-object p0
.end method

.method private cancelRequestRecommendedTitleList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v1, "cancelRequestRecommendedTitleList#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mTitleListUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;->onCanceledRequestRecommendedTitleList()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->finishRequestRecommendedTitleList()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->requestCollect()V

    return-void
.end method

.method private failRequestRecommendedTitleList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v1, "failRequestRecommendedTitleList#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mTitleListUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;->onFailedRequestRecommendedTitleList()V

    return-void
.end method

.method private finishRequestRecommendedTitleList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v1, "finishRequestRecommendedTitleList#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mTitleListUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;->onFinishedRequestRecommendedTitleList(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private requestCollect()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v1, "requestCollect#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getLastModifiedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLastModifiedAt(J)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->AUTO_TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$TriggerType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setTriggerType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->COMPOSER:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$SourceType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setSourceType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->IMMEDIATELY:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$Priority;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPriority(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TEXT_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v3

    or-int/2addr v2, v3

    sget-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setLinkWith(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mChangedPageIdList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setChangedPageIdList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mChangedPageIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public cancelRecommendedTitleList()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v1, "cancelRecommendedTitleList#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->CANCEL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->AUTO_TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setCancelType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public getObjectEventListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mTitleListUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;

    return-void
.end method

.method public isAutoTitleSupported(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectFeature;->isKeyPhraseCollectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectFeature;->isKeyPhraseCollectSupportedLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isPowerManageMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onChangedWorkingState(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangedWorkingState# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->requestCollect()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->CANCEL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->AUTO_TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$CancelType;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setCancelType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$MessageHandler;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mObjectEventListener:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mTitleListUpdateListener:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/ITitleListUpdateListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mChangedPageIdList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mChangedPageIdList:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public requestRecommendedTitleList()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->sExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->TAG:Ljava/lang/String;

    const-string v0, "update#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;->getResult()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->FINISHED:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;->getRepository()Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->getRecommendedTitleData()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update#, recommendedTitleList : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->mRecommendedTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->finishRequestRecommendedTitleList()V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;->getResult()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->CANCELED:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->cancelRequestRecommendedTitleList()V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;->getResult()I

    move-result p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->FAILED:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->failRequestRecommendedTitleList()V

    goto :goto_0

    :cond_2
    const-string p2, "update# unknown result"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
