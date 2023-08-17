.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;
.source "SourceFile"


# instance fields
.field public mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;-><init>()V

    return-void
.end method

.method private internalHide(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->inOutVI(Landroid/view/ViewGroup;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    :cond_0
    return-void
.end method

.method public hide(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->internalHide(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v0, "9936"

    const-string v1, "3"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getSelectionInfoData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingSelectionInfoData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingSelectionInfoData;->getSettingSelectionInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setSelectionInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$SelectionInfoChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setLoggingListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout$LoggingListener;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchOutside()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->internalHide(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v1, "9936"

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->compareSelectionInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    return-void
.end method

.method public show(ILandroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->init()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->setCallerType(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getSelectionInfoData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingSelectionInfoData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingSelectionInfoData;->getSettingSelectionInfo()Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingSelectionInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->inOutVI(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->updatePosition(ILandroid/view/View;Z)V

    return-void
.end method

.method public updatePosition(ILandroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->updateLayoutParam(ILandroid/view/View;)V

    return-void
.end method
