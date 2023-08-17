.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSelectionLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->init()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;->hideCloseButton()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSelectionLayout;->mSpenSettingSelectionLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingSelectionLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingLayoutUtils;->removeBackground(Landroid/view/View;)V

    return-void
.end method
