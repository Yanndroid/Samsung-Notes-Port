.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView$IPenMiniContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPenMiniContract"
.end annotation


# virtual methods
.method public abstract applyPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
.end method

.method public abstract beginDelayedRestrictOutOfBounds()V
.end method

.method public abstract getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
.end method

.method public abstract getToggleModeClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract isTouchDownConsumed()Z
.end method

.method public abstract runHidingVI()V
.end method

.method public abstract runReboundVI()V
.end method
