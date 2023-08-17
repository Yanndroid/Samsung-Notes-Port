.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mSCoverListener:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;

.field private mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SCoverController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mSCoverListener:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    return-object p0
.end method


# virtual methods
.method public disableSCoverListener()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;->COMPOSER:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->unregister(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mSCoverListener:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->unregisterListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)V

    return-void
.end method

.method public enableSCoverListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->TAG:Ljava/lang/String;

    const-string v1, "enableSCoverListener# activity not available"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;->COMPOSER:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->register(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/SViewManager$RegisterID;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mSCoverListener:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->registerListener(Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->isCoverClosed(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->startService(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V

    :cond_1
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-void
.end method

.method public isCoverClosed(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/SViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager;->isCoverClosed(Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->disableSCoverListener()V

    return-void
.end method
