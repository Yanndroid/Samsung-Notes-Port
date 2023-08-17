.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarHighlighter;
.source "SourceFile"


# instance fields
.field private final mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

.field private final mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarHighlighter;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getHwSettingViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->isShownSettingViews(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->show(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->onSelected(I)V

    return-void
.end method

.method public setSelected(Z)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarHighlighter;->setSelected(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->isShownSettingViews(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->isShownSettingViews(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarHighlighter;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->show(II)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
