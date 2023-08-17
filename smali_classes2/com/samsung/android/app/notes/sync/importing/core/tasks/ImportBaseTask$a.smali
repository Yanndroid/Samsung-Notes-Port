.class public interface abstract Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V
.end method

.method public abstract onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
.end method

.method public abstract onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
.end method

.method public abstract onImportEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onImportStart(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
.end method

.method public abstract onItemImportFinished(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;III)V
.end method

.method public abstract onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V
.end method
