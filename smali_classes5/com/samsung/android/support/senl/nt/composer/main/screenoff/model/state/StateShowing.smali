.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StateShowing"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    return-void
.end method


# virtual methods
.method public onBackKeyPressed(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onBackKeyPressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->isEditedNote()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->isEmptyNote()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->requestShowSaveNoteDialog()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setCloseReason(I)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    :goto_2
    return-void
.end method

.method public onDispatchActionDownEvent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onDispatchActionDownEvent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/KeepScreenOnFlagFeature;->needToAddKeepScreenOnFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->requestStopGoToSleep()V

    :cond_0
    return-void
.end method

.method public onDispatchActionUpEvent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onDispatchActionUpEvent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/KeepScreenOnFlagFeature;->needToAddKeepScreenOnFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->getScreenTimeOut()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->requestGoToSleep(I)V

    :cond_0
    return-void
.end method

.method public onFolded(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onFolded#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setCloseReason(I)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSaveNoteCache()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onHomeKeyPressed(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onHomeKeyPressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setCloseReason(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportAOP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSaveNoteCache()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSave()V

    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onInterrupted(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onInterrupted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setCloseReason(I)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSaveNoteCache()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V
    .locals 1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v0, "onNotifyExecution#"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPause(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onPause#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSaveNoteCache()V

    return-void
.end method

.method public onReadyToShow(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 4

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->hasCachedNote()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReadyToShow# hasCachedNote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->requestShowSelectNoteDialog()V

    :cond_0
    return-void
.end method

.method public onResumePenAttach(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onResumePenAttach#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setCloseReason(I)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onClosingAnimationPenAttach()V

    return-void
.end method

.method public onResumeResultApply(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onResumeResultApply#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setCloseReason(I)V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSavePinCache(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onScreenOff(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onScreenOff#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onPreHide()V

    return-void
.end method

.method public onScreenOn(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onScreenOn#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onPreShow()V

    return-void
.end method

.method public onWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isPinnedPanelRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1506

    goto :goto_0

    :cond_0
    const/16 v0, 0x1504

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->hasGestureNavigation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isTaskBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x200

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarColor(Landroid/view/Window;I)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarContrastEnforced(Landroid/view/Window;Z)V

    :cond_1
    move v5, v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v3

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setSystemUiVisibility(Landroid/view/View;IZZZ)V

    invoke-interface {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->blockUserInput(Z)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->resetIntent()V

    return-void
.end method
