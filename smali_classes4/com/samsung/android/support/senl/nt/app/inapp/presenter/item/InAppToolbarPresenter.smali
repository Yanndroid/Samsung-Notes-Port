.class public Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppToolbarPresenter"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mRemoteHwSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;

.field private final mRemoteRtSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

.field private final mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarContract;

.field private mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarContract;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionContract$PresenterContract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->createViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;

    invoke-direct {v0, p1, p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionContract$PresenterContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mRemoteHwSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

    invoke-direct {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionContract$PresenterContract;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mRemoteRtSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private createViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;)V

    return-object v0
.end method


# virtual methods
.method public addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 0

    return-void
.end method

.method public changeTextMode()V
    .locals 0

    return-void
.end method

.method public changeWritingMode()V
    .locals 0

    return-void
.end method

.method public clearContextMenu()V
    .locals 0

    return-void
.end method

.method public createHwSettingPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenterImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public dismissDirectWriteSettingDialog()V
    .locals 0

    return-void
.end method

.method public enableDockingMode(Z)V
    .locals 0

    return-void
.end method

.method public executeEraseAllOnAllPages()V
    .locals 0

    return-void
.end method

.method public executeEraseAllOnCurrentPage(I)V
    .locals 0

    return-void
.end method

.method public executePenSetting()V
    .locals 0

    return-void
.end method

.method public executeRemoteEraser()V
    .locals 0

    return-void
.end method

.method public executeRemoteFavoritePen(Z)V
    .locals 0

    return-void
.end method

.method public executeSelectedChangeStyle(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 0

    return-void
.end method

.method public getBackgroundThemeColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorTheme()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPageInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRemoteRtSettingPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mRemoteRtSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/setting/RemoteRtSettingPresenter;

    return-object v0
.end method

.method public bridge synthetic getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/HwSettingPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;

    move-result-object v0

    return-object v0
.end method

.method public getSettingInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mRemoteHwSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;

    return-object v0
.end method

.method public getToolbarPosition()Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    if-eqz v0, :cond_0

    const-string v0, "InAppToolbarPresenter"

    const-string v1, "hide# hwToolbarMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;->hide()V

    :cond_0
    return-void
.end method

.method public hidePopupsWithSpoid()V
    .locals 0

    return-void
.end method

.method public hideSettingPenMini()V
    .locals 0

    return-void
.end method

.method public hideSoftInput()V
    .locals 0

    return-void
.end method

.method public initFirstCase()V
    .locals 0

    return-void
.end method

.method public isCoeditNote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeleteOnlyState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDockingMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEasyWritingPadEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnableUndoRedoMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEraseCurrentTwoPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIdleWorkingState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLastStateLockCanvas()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMathEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRedoable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;->isShowing()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowing# hwToolbarMenu isShowing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InAppToolbarPresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShownSoftInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEraseCurrentPage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mRemoteHwSettingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/RemoteHwSettingPresenter;->isSinglePageMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTabletLayout()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isTaskRunningInUndoRedoPresenter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTextButtonEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTextMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUndoable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public offEasyWritingPad()V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDetachView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    if-eqz v0, :cond_0

    const-string v0, "InAppToolbarPresenter"

    const-string v1, "onSaveInstanceState# hwToolbarMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public openSelectionChangeStyle(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;ZLandroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public reboundSettingPenMiniVI()V
    .locals 0

    return-void
.end method

.method public redo()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 0

    return-void
.end method

.method public requestFocusToComposerView()V
    .locals 0

    return-void
.end method

.method public restoreViewState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    if-eqz v0, :cond_0

    const-string v0, "InAppToolbarPresenter"

    const-string v1, "restoreState# hwToolbarMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;->restore(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setBlockContextMenu(Z)V
    .locals 0

    return-void
.end method

.method public setEasyWritingPadEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLastStateLockCanvas(Z)V
    .locals 0

    return-void
.end method

.method public setMenuDirty()V
    .locals 0

    return-void
.end method

.method public setModelZoomLock(Z)V
    .locals 0

    return-void
.end method

.method public setSpenGestureControllerListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenGestureControllerImpl;)V
    .locals 0

    return-void
.end method

.method public setToolbarPosition(Landroid/graphics/Rect;Z)V
    .locals 0

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    return-void
.end method

.method public setZoomLock(Z)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    if-eqz v0, :cond_0

    const-string v0, "InAppToolbarPresenter"

    const-string v1, "show# hwToolbarMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarMenuView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarContract$IView;->show()V

    :cond_0
    return-void
.end method

.method public showLanguageSettingDialog()V
    .locals 0

    return-void
.end method

.method public showLockCanvasToolTip()V
    .locals 0

    return-void
.end method

.method public showSettingPenMini()V
    .locals 0

    return-void
.end method

.method public showSoftInput()V
    .locals 0

    return-void
.end method

.method public undo()V
    .locals 0

    return-void
.end method

.method public updateLastPenTypeSelectionState()V
    .locals 2

    const-string v0, "InAppToolbarPresenter"

    const-string v1, "updateLastPenTypeSelectionState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarPresenter;->mToolbarManager:Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/presenter/item/InAppToolbarContract;->updateLastPenTypeSelectionState()V

    return-void
.end method

.method public updateUndoRedoMenu()V
    .locals 0

    return-void
.end method

.method public updatedLastPenInfo()V
    .locals 0

    return-void
.end method
