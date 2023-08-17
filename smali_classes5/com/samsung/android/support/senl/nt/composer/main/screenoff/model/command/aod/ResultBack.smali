.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultBack;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AbsAODCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AbsAODCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic executeOnResume(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AbsAODCommand;->executeOnResume(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

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
