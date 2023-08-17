.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/DocContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract changeDocument(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isSavingState()Z
.end method

.method public abstract requestDiscard()V
.end method

.method public abstract requestSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZ)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract requestSaveCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZ)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract requestSaveToDevice()V
.end method

.method public abstract requestSnapSave(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;ZZ)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;ZZ)V"
        }
    .end annotation
.end method

.method public abstract setRunnableAfterCompletedSave(Ljava/lang/Runnable;)V
.end method
