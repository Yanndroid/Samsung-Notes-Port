.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StateHiding"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    return-void
.end method


# virtual methods
.method public onFolded(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

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

.method public onInterrupted(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    const-string v1, "onInterrupted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSaveNoteCache()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V
    .locals 1

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    const-string v0, "onNotifyExecution#"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V

    return-void
.end method

.method public onReadyToShow(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 4

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->hasCachedNote()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    const-string v1, "onResumePenAttach"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSave()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onResumePenStartAction(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    const-string v1, "onResumePenStartAction"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/WakeUpFeature;->needToWakeUpOnPenButtonHoverTap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x10000000

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->wakeUp(JI)Z

    :cond_0
    return-void
.end method

.method public onResumeResultApply(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    const-string v1, "onResumeResultApply#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;->mStateSetter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSavePinCache(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onScreenOn(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    const-string v1, "onScreenOn#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onPreShow()V

    return-void
.end method

.method public onWindowFocusChangedPenButtonHoverTap(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChangedPenButtonHoverTap"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->requestReadyToShow(Z)V

    return-void
.end method
