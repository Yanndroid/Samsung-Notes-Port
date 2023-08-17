.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAddFavoritePenLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/impl/InAppSettingImpl;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public closeColorPopup()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->closeColorPickerPopup()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->closeColorSettingPopup()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mIsSupportEyedropper:Z

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingAddFavoritePenLayout;->init()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingLayoutUtils;->removeBackground(Landroid/view/View;)V

    return-void
.end method

.method public setLayoutOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setLayoutOrientation(I)V

    return-void
.end method
