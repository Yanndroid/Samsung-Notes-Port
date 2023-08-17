.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getHwToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;
.end method

.method public abstract getSelectedPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
.end method

.method public abstract getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;
.end method

.method public abstract getSettingView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingContract$ISettingView;
.end method

.method public abstract notifyRecentColorChanged()V
.end method

.method public abstract onUpdateEyedropperColor()V
.end method

.method public abstract setAllTypePenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
.end method

.method public abstract setHighlighterSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
.end method

.method public abstract setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
.end method

.method public abstract updateLastPenInfo()V
.end method
