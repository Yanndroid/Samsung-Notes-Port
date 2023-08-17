.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView$IFavoritePenMiniContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingFavoritePenMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFavoritePenMiniContract"
.end annotation


# virtual methods
.method public abstract applyPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
.end method

.method public abstract getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
.end method

.method public abstract getToggleModeClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract hide()V
.end method

.method public abstract isSelectedPenTypeButtons()Z
.end method

.method public abstract isTouchDownConsumed()Z
.end method

.method public abstract rotate()V
.end method

.method public abstract setSelectLastPenTypeButton(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
.end method

.method public abstract updateCurrentPenInfo()V
.end method
