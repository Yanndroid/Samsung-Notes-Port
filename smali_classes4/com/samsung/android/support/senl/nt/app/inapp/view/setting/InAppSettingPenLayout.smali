.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/impl/InAppSettingImpl;


# instance fields
.field private mCurrentPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayout;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    return-object p0
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
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mIsSupportEyedropper:Z

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayout;->init()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->hideCloseButton()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setSelfClose(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setColorPickerCloseButtonType(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingLayoutUtils;->removeBackground(Landroid/view/View;)V

    return-void
.end method

.method public initSettingLayout()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->initSettingLayout()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->getPenInfoData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenInfoData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingPenInfoData;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mHwSettingSALog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSALog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;->getPenLoggingListener(ZZ)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setLoggingListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;)V

    return-void
.end method

.method public setCommonChangedListener()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->setCommonChangedListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setColorPickerChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ColorPickerChangedListener;)V

    return-void
.end method

.method public setLayoutOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayoutCommon;->mSpenSettingLayout:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setLayoutOrientation(I)V

    return-void
.end method

.method public setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingPenLayout;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout;->mCurrentPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout;->mCurrentPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-void

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "671"

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;->getSADetailPenType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "6658"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout;->mCurrentPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-eq v0, v3, :cond_2

    const-string v2, "6660"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget-boolean v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    if-eq v0, v3, :cond_4

    if-eqz v0, :cond_3

    const-string v0, "a"

    goto :goto_2

    :cond_3
    const-string v0, "b"

    :goto_2
    const-string v2, "6672"

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0xff

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0xff

    if-eq v0, v2, :cond_5

    const-string v2, "6662"

    goto :goto_1

    :cond_5
    :goto_3
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingPenLayout;->mCurrentPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-void
.end method
