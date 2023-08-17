.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingColorPickerLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/impl/InAppSettingImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppColorPickerLayout"


# instance fields
.field public mHsvColor:[F

.field private mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingColorPickerLayout;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mHsvColor:[F

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->dismissColorPicker()V

    return-void
.end method

.method private dismissColorPicker()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method private internalHide()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->updateShowState(IIZ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->updateShowState(IIZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    :cond_0
    return-void
.end method

.method public closeColorPopup()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->internalHide()V

    return-void
.end method

.method public init()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->dismissColorPicker()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mFloatingContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;-><init>(Landroid/content/Context;I[FZ)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setCloseButton(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$OnCloseClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout$2;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchOutside()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->internalHide()V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public setCurrentColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setCurrentColor([F)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mHsvColor:[F

    return-void
.end method

.method public setPickerColorChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setColorPickerChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;)V

    return-void
.end method

.method public show(ILandroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->setCallerType(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->showColorPickerPopup(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getCallerType()I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->getViewId()I

    move-result p3

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->updateShowState(IIZ)V

    return-void
.end method

.method public showColorPickerPopup(Landroid/view/View;)V
    .locals 2

    const-string v0, "InAppColorPickerLayout"

    const-string v1, "showColorPickerPopup"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getColorTheme()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setOrientationMode(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->show(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mSpenColorPickerPopup:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->mHsvColor:[F

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup;->setCurrentColor([F)V

    return-void
.end method
