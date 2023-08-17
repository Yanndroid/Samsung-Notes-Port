.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/ServiceContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearChangingInfo()V
.end method

.method public abstract getOpenParam(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract isAttachedToActivity()Z
.end method

.method public abstract isInProgressNoteChange()Z
.end method

.method public abstract needToConflictSyncForComposerEdit(Ljava/lang/String;)Z
.end method

.method public abstract needToPendingSyncForComposerBusy(Ljava/lang/String;)Z
.end method

.method public abstract onChangedDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onChangedWorkingState(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadDocCompleted(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onLoadDocFailed(Ljava/lang/Throwable;Z)V
.end method

.method public abstract onReadyReload(Ljava/lang/Runnable;)V
.end method

.method public abstract onReceiveBroadcastMessage(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Intent;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onReloadedDocument(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onServiceConnected()V
.end method

.method public abstract setChangingUuid(Ljava/lang/String;)V
.end method

.method public abstract showDebugMessageToast(Ljava/lang/String;)V
.end method
