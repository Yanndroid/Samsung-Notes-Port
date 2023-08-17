.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/AbsState;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StateStarting"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

    const-string v1, "onInterrupted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSaveNoteCache()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onPause(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

    const-string v1, "onPause#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onSaveNoteCache()V

    return-void
.end method

.method public onReadyToShow(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 4

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->hasCachedNote()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

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

.method public onResumeConvertLegacyPinnedNote(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumeConvertLegacyPinnedNote# legacyPinPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->convert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResumeConvertLegacyPinnedNote# uuid/path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sdoc_uuid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "doc_path"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setLoadedPinUuid(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setLoadedPinNotePath(Ljava/lang/String;)V

    return-void
.end method

.method public onResumePenAttach(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

    const-string v1, "onResumePenAttach#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    return-void
.end method

.method public onWindowFocusChangedPenButtonHoverTap(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChangedPenButtonHoverTap"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->requestReadyToShow(Z)V

    return-void
.end method

.method public onWindowFocusChangedPenDetach(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

    const-string v1, "onWindowFocusChangedPenDetach"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->requestReadyToShow(Z)V

    return-void
.end method

.method public onWindowLoadNoteByDoubleTapOnAOD(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateStarting;->TAG:Ljava/lang/String;

    const-string v1, "onWindowLoadNoteByDoubleTapOnAOD"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onShowingAnimation()V

    return-void
.end method
