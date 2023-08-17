.class public interface abstract Lcom/samsung/android/support/senl/nt/model/executor/ExecutorServiceUsecase;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract existUsingDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Ljava/lang/String;)Z
    .param p1    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getState()Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$WorkingState;
.end method

.method public abstract init()V
.end method

.method public abstract isIdle()Z
.end method

.method public abstract quit(Z)V
.end method

.method public abstract setOnWorkingStateListener(Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$OnWorkingStateListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/scheduler/SchedulerDataSource$OnWorkingStateListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTaskProgressListener(Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/executor/NotesDocumentInteractor$DocumentInteractorListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
