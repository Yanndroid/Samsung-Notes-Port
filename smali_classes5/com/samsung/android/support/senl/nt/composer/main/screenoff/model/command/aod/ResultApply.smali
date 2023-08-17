.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultApply;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AbsAODCommand;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ResultApply"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultApply;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AbsAODCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public executeOnResume(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultApply;->TAG:Ljava/lang/String;

    const-string v1, "executeOnResume"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultApply;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onResumeResultApply(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getUri()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AbsAODCommand;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUri(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AbsAODCommand;->setUri(Ljava/lang/String;)V

    return-void
.end method
