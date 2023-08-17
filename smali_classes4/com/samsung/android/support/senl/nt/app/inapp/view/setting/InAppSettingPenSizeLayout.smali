.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenSizeLayout;
.source "SourceFile"


# instance fields
.field private final mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenSizeLayout;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->floating_layout_container_for_sub:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;->mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
.end method

.method private onVisibilityChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->isShownSettingViews(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InAppSettingPenSizeLayout"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;->mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setFloatingContainerVisibility(I)V

    return-void
.end method


# virtual methods
.method public internalHide(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenSizeLayout;->internalHide(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;->onVisibilityChanged()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSelectedPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->updateToolbarSelectionState(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFloatingContainer(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)V
    .locals 0

    return-void
.end method

.method public show(ILandroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenSizeLayout;->show(ILandroid/view/View;Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenSizeLayout;->onVisibilityChanged()V

    return-void
.end method
