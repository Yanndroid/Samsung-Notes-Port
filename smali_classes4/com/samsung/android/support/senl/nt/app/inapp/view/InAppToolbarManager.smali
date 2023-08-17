.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;
.implements Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarContract;


# instance fields
.field private mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

.field private final mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

.field private final mRemoteFunctionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;

.field private mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityClientManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityService;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mRemoteFunctionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;

    invoke-direct {v1, p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarContract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionContract$PresenterContract;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;->addRemoteTargetClass(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->getRemoteRtSettingPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;->addRemoteTargetClass(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/RemoteInAppPresenter;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/RemoteInAppPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionContract$PresenterContract;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;->addRemoteTargetClass(Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/IToolbarManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemManager$IHwToolbarMenu;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/item/HwToolbarItemManager;)V

    return-void
.end method


# virtual methods
.method public canNotChangeMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->close()V

    :cond_0
    return-void
.end method

.method public closeColorPopups()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;->closeColorPopups()V

    return-void
.end method

.method public getColorTheme(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideDirectWrite()V
    .locals 0

    return-void
.end method

.method public hideSettingPenMini()V
    .locals 0

    return-void
.end method

.method public invalidateFlow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;->invalidateFlow()V

    return-void
.end method

.method public isDirectWriteRecognizing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDirectWriteUsing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportDirectWrite(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public reboundSettingPenMiniVI()V
    .locals 0

    return-void
.end method

.method public receiveData([B)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mRemoteFunctionPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionPresenter;->receiveMessage(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mHwToolbarMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    :cond_1
    return-void
.end method

.method public setDirectWrite(Z)V
    .locals 0

    return-void
.end method

.method public setDirectWriteColor(II)V
    .locals 0

    return-void
.end method

.method public setSpenColorThemeUtil(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mSpenColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public showDirectWrite()V
    .locals 0

    return-void
.end method

.method public showSettingPenMini()V
    .locals 0

    return-void
.end method

.method public updateLastPenTypeSelectionState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppToolbarManager;->mInAppToolbarItemManager:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;->updateLastPenTypeSelectionState()V

    return-void
.end method
