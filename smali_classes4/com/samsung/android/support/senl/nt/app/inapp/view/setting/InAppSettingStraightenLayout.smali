.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingStraightenLayout;
.source "SourceFile"


# instance fields
.field private final mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingStraightenLayout;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->floating_layout_container_for_sub:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;->mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
.end method

.method private onVisibilityChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;->mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setFloatingContainerVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;->mDimView:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setItemViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingStraightenLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;->onVisibilityChanged(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingStraightenLayout;->hide(Z)V

    return-void
.end method

.method public onTouchOutside()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;->hide(Z)V

    return-void
.end method

.method public setFloatingContainer(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;)V
    .locals 0

    return-void
.end method

.method public show(ILandroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingStraightenLayout;->show(ILandroid/view/View;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingStraightenLayout;->mStraightenLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingStraightenLayout;->onVisibilityChanged(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingStraightenLayout;->mLanguageSettingBtn:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->setEnabled(Landroid/view/View;Z)V

    return-void
.end method
