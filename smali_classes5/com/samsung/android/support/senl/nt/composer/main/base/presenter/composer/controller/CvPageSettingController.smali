.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private mPageRatioType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CvPageSettingController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->A4_PORTRAIT:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageRatioType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object p0
.end method

.method private createPageLayoutState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isFoldableModel()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStateFold;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->createPageLayoutStateContract()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStateFold;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStatePhone;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->createPageLayoutStateContract()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutStatePhone;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;)V

    :goto_0
    return-object v0
.end method

.method private createPageLayoutStateContract()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState$Contract;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;)V

    return-object v0
.end method

.method private updateStateByOrientation(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setLandscapeState()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setPortraitState()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->updateView()V

    return-void
.end method

.method private updateView()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->getColumn()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->getRow()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isFitToScreen()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isVertical()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->setPageLayoutAll(IIZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageLayoutState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    return-object v0
.end method

.method public getPageRatioType()Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageRatioType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->createPageLayoutState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->isSubDisplay(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/content/res/Configuration;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isSubDisplay()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setSubDisplay(Z)V

    move p2, v3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->getWindowMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setWindowMode(I)V

    goto :goto_0

    :cond_1
    move v3, p2

    :goto_0
    if-eqz v3, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->updateStateByOrientation(I)V

    :cond_2
    return-void
.end method

.method public setPageLayout(IIZZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageLayout# before# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setPageLayout(IIZZ)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->updateView()V

    return-void
.end method

.method public setPageRatioType(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageRatioType# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageRatioType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageRatioType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageRatioType:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->changePageHeight(Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V
    .locals 5

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->isSubDisplay(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getMultiWindowMode(Landroid/content/res/Configuration;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setView# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setSubDisplay(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->setWindowMode(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->updateStateByOrientation(I)V

    return-void
.end method

.method public updatePageLayoutByPageType(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->loadPageLayoutDefaultForSingle()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->loadPageLayoutSetting()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->mPageLayoutState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->syncSettingData()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->updateView()V

    return-void
.end method
