.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/AbsStartCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD$ICommandFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommandFactory:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD$ICommandFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LoadNoteByDoubleTapOnAOD"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/AbsStartCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public executeOnResume(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadPinnedLegacyNotePathByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeOnResume# legacyPinPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onResumeConvertLegacyPinnedNote(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onResumeLoadNoteByDoubleTapOnAOD(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadPinnedNoteUuidByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/PinData;->loadPinnedNotePathByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeOnResume# uuid/path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->mCommandFactory:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD$ICommandFactory;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD$ICommandFactory;->setPrimitiveStartCommandUri(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setLoadedPinUuid(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->setLoadedPinNotePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->screenoff_already_deleted:I

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/high16 v2, 0x10000000

    invoke-virtual {p2, v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->wakeUp(JI)Z

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;->onFinish()V

    :goto_2
    return-void
.end method

.method public executeOnWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->TAG:Ljava/lang/String;

    const-string v1, "executeOnWindowFocusChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onWindowLoadNoteByDoubleTapOnAOD(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public bridge synthetic getUri()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/AbsStartCommand;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCommandFactory(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD$ICommandFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;->mCommandFactory:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD$ICommandFactory;

    return-void
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/AbsStartCommand;->setUri(Ljava/lang/String;)V

    return-void
.end method
