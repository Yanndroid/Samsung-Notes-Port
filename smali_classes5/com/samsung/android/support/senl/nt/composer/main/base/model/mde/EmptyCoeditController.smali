.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/EmptyCoeditController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDeleteOnlyMode()V
    .locals 0

    return-void
.end method

.method public clearCoeditCallback()V
    .locals 0

    return-void
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public internalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 0

    return-void
.end method

.method public internalSnapRefresh()V
    .locals 0

    return-void
.end method

.method public internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 0

    return-void
.end method

.method public internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 0

    return-void
.end method

.method public isCoeditMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWritePermissionGranted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pauseConcurrency(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readyCoedit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestReadPermission()V
    .locals 0

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public saveCoeditCache()V
    .locals 0

    return-void
.end method

.method public setCoeditServiceContract(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V
    .locals 0

    return-void
.end method

.method public trimMemory(I)V
    .locals 0

    return-void
.end method

.method public waitConnection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
