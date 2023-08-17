.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;
    }
.end annotation


# static fields
.field public static final STATE_CLOSED:I = 0x7

.field public static final STATE_CLOSING:I = 0x6

.field public static final STATE_INIT:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RUNNING:I = 0x5

.field public static final STATE_SNAP_DELAYED:I = 0x3

.field public static final STATE_SNAP_END:I = 0x4

.field public static final STATE_SNAP_RUNNING:I = 0x2


# virtual methods
.method public abstract checkDeleteOnlyMode()V
.end method

.method public abstract externalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
.end method

.method public abstract externalSnapDownload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
.end method

.method public abstract externalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
.end method

.method public abstract externalSnapUpload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V
.end method

.method public abstract getState()I
.end method

.method public abstract getUser()Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract internalChannelOpen(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
.end method

.method public abstract internalSnapRefresh()V
.end method

.method public abstract internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;Lcom/samsung/android/support/senl/nt/coedit/control/common/CoeditControlCallback;)V
.end method

.method public abstract internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;)V
.end method

.method public abstract isInitializing()Z
.end method

.method public abstract isSnapEndState()Z
.end method

.method public abstract isWritePermissionGranted()Z
.end method

.method public abstract pauseConcurrency(Ljava/lang/String;)I
.end method

.method public abstract pauseConcurrency(Ljava/lang/String;Ljava/lang/Runnable;)I
.end method

.method public abstract release(Ljava/lang/Runnable;Ljava/lang/String;)Z
.end method

.method public abstract requestReadPermission()V
.end method

.method public abstract resumeConcurrency(Ljava/lang/String;)I
.end method

.method public abstract saveCoeditCache()V
.end method

.method public abstract setCancelled()V
.end method

.method public abstract setComposerContract(Lcom/samsung/android/support/senl/nt/coedit/control/ICoeditHandler$ComposerContract;)V
.end method
