.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICoeditController"
.end annotation


# virtual methods
.method public abstract checkDeleteOnlyMode()V
.end method

.method public abstract clearCoeditCallback()V
.end method

.method public abstract getWorkspaceId()Ljava/lang/String;
.end method

.method public abstract internalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
.end method

.method public abstract internalSnapRefresh()V
.end method

.method public abstract internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
.end method

.method public abstract internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
.end method

.method public abstract isCoeditMode()Z
.end method

.method public abstract isWritePermissionGranted()Z
.end method

.method public abstract pauseConcurrency(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;)I
.end method

.method public abstract readyCoedit(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract requestReadPermission()V
.end method

.method public abstract resumeConcurrency(Ljava/lang/String;)I
.end method

.method public abstract saveCoeditCache()V
.end method

.method public abstract setCoeditServiceContract(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V
.end method

.method public abstract trimMemory(I)V
.end method

.method public abstract waitConnection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)Z
.end method
