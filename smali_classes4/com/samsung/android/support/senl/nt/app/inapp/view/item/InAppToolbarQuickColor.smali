.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppToolbarQuickColor"


# instance fields
.field private final mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

.field private final mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

.field private final mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getHwSettingViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    return-object p0
.end method

.method private showColorPicker(ILandroid/view/View;[F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->init(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->getHwSettingLayout(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mColorPickerChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->setPickerColorChangedListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerPopup$ColorPickerChangedListener;)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppColorPickerLayout;->setCurrentColor([F)V

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {p3, p1, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->show(IILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public functionEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "functionEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppToolbarQuickColor"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick()V
    .locals 3

    const-string v0, "InAppToolbarQuickColor"

    const-string v1, "onClick# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->isShownSettingViews(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->hide()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarConstants$QUICK_COLOR;->getOrdinal(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getQuickColorData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingQuickColorData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingQuickColorData;->getQuickHSVColor(I)[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->showColorPicker(ILandroid/view/View;[F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    const/16 v2, 0x800

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->onSelected(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->hide()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->onSelected(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->updateToolbarSelectionState()V

    :goto_0
    return-void
.end method

.method public setSelected(Z)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->setSelected(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->updateQuickColor(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateUIColor(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickColor;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getColorTheme(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->composer_quick_color_stroke:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method
