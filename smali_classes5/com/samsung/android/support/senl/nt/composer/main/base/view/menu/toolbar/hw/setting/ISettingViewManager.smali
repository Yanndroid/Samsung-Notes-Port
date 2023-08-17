.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearContextMenu()V
.end method

.method public abstract executeEraseAllOnAllPages()V
.end method

.method public abstract executeEraseAllOnCurrentPage(I)V
.end method

.method public abstract executeSelectedChangeStyle(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
.end method

.method public abstract getBackgroundThemeColor()I
.end method

.method public abstract getColorTheme()I
.end method

.method public abstract getCurrentPageInfo()Ljava/lang/String;
.end method

.method public abstract getHWToolbarState()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;
.end method

.method public abstract getSelectedPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
.end method

.method public abstract getSelectedToolbarItem()I
.end method

.method public abstract getSettingInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;
.end method

.method public abstract getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
.end method

.method public abstract hide()Z
.end method

.method public abstract isCoeditNote()Z
.end method

.method public abstract isEraseCurrentTwoPage()Z
.end method

.method public abstract isShownSettingViews(I)Z
.end method

.method public abstract isSupportEraseCurrentPage()Z
.end method

.method public abstract isTabletLayout()Z
.end method

.method public abstract notifyChangedRecentColor(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyPaletteSetChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onShowSettingPenMini()V
.end method

.method public abstract onUpdatedSelection(I)V
.end method

.method public abstract onUpdatedStyle(I)V
.end method

.method public abstract requestFocusToComposerView()V
.end method

.method public abstract setBlockContextMenu(Z)V
.end method

.method public abstract setSelectedToolbarItem(I)V
.end method

.method public abstract setSkipHideFavoriteList(Z)V
.end method

.method public abstract show(II)V
.end method

.method public abstract show(IILandroid/view/View;)V
.end method

.method public abstract show(IILandroid/view/View;Z)V
.end method

.method public abstract updateLayoutParam(ILandroid/view/View;)V
.end method

.method public abstract updateLayoutParam(ILandroid/view/View;Landroid/view/View;)V
.end method

.method public abstract updateLayoutParam(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract updateShowState(IIZ)V
.end method

.method public abstract updateShowState(IIZZ)V
.end method
