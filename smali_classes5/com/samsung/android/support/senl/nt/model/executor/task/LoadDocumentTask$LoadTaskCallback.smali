.class public interface abstract Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask$LoadTaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentTask$TaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/executor/task/LoadDocumentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadTaskCallback"
.end annotation


# virtual methods
.method public abstract getCache(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onLoaded(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/SpenSDocDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
