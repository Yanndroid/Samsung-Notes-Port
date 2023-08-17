.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarAlignmentRecognition;
.source "SourceFile"


# instance fields
.field private final mContainer:Landroid/view/View;

.field private final mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

.field private final mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarAlignmentRecognition;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;->mContainer:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->getHwSettingViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isBeautifierFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarAlignmentRecognition;->onClick()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->updateLastPrimitiveTypeSelectionState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemContract;->onSelected(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;->mInAppSettingViewManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItem;->getViewId()I

    move-result v1

    const/16 v2, 0x2000

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarAlignmentRecognition;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingViewManager;->show(IILandroid/view/View;)V

    return-void
.end method
