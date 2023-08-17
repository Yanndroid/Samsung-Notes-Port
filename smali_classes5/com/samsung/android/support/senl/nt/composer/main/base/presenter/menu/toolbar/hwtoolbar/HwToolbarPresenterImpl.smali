.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
.end method

.method public abstract changeTextMode()V
.end method

.method public abstract changeWritingMode()V
.end method

.method public abstract clearContextMenu()V
.end method

.method public abstract createHwSettingPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
.end method

.method public abstract dismissDirectWriteSettingDialog()V
.end method

.method public abstract enableDockingMode(Z)V
.end method

.method public abstract executeEraseAllOnAllPages()V
.end method

.method public abstract executeEraseAllOnCurrentPage(I)V
.end method

.method public abstract executePenSetting()V
.end method

.method public abstract executeRemoteEraser()V
.end method

.method public abstract executeRemoteFavoritePen(Z)V
.end method

.method public abstract executeSelectedChangeStyle(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
.end method

.method public abstract getBackgroundThemeColor()I
.end method

.method public abstract getColorTheme()I
.end method

.method public abstract getCurrentPageInfo()Ljava/lang/String;
.end method

.method public abstract getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
.end method

.method public abstract getToolbarPosition()Landroid/graphics/Rect;
.end method

.method public abstract getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
.end method

.method public abstract hide()V
.end method

.method public abstract hidePopupsWithSpoid()V
.end method

.method public abstract hideSettingPenMini()V
.end method

.method public abstract hideSoftInput()V
.end method

.method public abstract initFirstCase()V
.end method

.method public abstract isCoeditNote()Z
.end method

.method public abstract isDeleteOnlyState()Z
.end method

.method public abstract isDockingMode()Z
.end method

.method public abstract isEasyWritingPadEnabled()Z
.end method

.method public abstract isEnableUndoRedoMenu()Z
.end method

.method public abstract isEraseCurrentTwoPage()Z
.end method

.method public abstract isIdleWorkingState()Z
.end method

.method public abstract isLastStateLockCanvas()Z
.end method

.method public abstract isMathEnabled()Z
.end method

.method public abstract isRedoable()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isShownSoftInput()Z
.end method

.method public abstract isSupportEraseCurrentPage()Z
.end method

.method public abstract isTabletLayout()Z
.end method

.method public abstract isTaskRunningInUndoRedoPresenter()Z
.end method

.method public abstract isTextButtonEnabled()Z
.end method

.method public abstract isTextMode()Z
.end method

.method public abstract isUndoable()Z
.end method

.method public abstract isZoomLocked()Z
.end method

.method public abstract offEasyWritingPad()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onDetachView()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract openSelectionChangeStyle(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;ZLandroid/view/View;Landroid/graphics/Rect;)V
.end method

.method public abstract reboundSettingPenMiniVI()V
.end method

.method public abstract redo()V
.end method

.method public abstract release()V
.end method

.method public abstract removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
.end method

.method public abstract requestFocusToComposerView()V
.end method

.method public abstract restoreViewState(Landroid/os/Bundle;)V
.end method

.method public abstract setBlockContextMenu(Z)V
.end method

.method public abstract setEasyWritingPadEnabled(Z)V
.end method

.method public abstract setLastStateLockCanvas(Z)V
.end method

.method public abstract setMenuDirty()V
.end method

.method public abstract setModelZoomLock(Z)V
.end method

.method public abstract setSpenGestureControllerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenGestureControllerImpl;)V
.end method

.method public abstract setToolbarPosition(Landroid/graphics/Rect;Z)V
.end method

.method public abstract setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;)V
.end method

.method public abstract setZoomLock(Z)V
.end method

.method public abstract show()V
.end method

.method public abstract showLanguageSettingDialog()V
.end method

.method public abstract showLockCanvasToolTip()V
.end method

.method public abstract showSettingPenMini()V
.end method

.method public abstract showSoftInput()V
.end method

.method public abstract undo()V
.end method

.method public abstract updateUndoRedoMenu()V
.end method

.method public abstract updatedLastPenInfo()V
.end method
