.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarQuickSize;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

.field private final mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarQuickSize;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V

    const-string p1, "InAppToolbarQuickSize"

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getHwSettingViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    const-string v0, "InAppToolbarQuickSize"

    const-string v1, "onClick# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->isShownSettingViews(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->hide()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->show(IILandroid/view/View;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarConstants$QUICK_SIZE;->getOrdinal(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getQuickSizeData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingQuickSizeData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingQuickSizeData;->getSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    const/16 v2, 0x800

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->onSelected(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->hide()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->onSelected(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarQuickSize;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->updateToolbarSelectionState()V

    const-string v0, "1"

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "8128"

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v1, "401"

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
