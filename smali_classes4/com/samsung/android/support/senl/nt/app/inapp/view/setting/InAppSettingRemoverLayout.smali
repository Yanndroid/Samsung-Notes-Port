.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingRemoverLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->init()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->mSpenSettingRemoverLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->hideCloseButton()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->mSpenSettingRemoverLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->setSelfClose(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->mSpenSettingRemoverLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingLayoutUtils;->removeBackground(Landroid/view/View;)V

    return-void
.end method
