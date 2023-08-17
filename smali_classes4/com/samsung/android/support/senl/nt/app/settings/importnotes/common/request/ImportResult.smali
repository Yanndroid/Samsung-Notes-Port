.class public interface abstract Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/request/ImportResult;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V
.end method

.method public abstract onError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onGetListEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
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

.method public abstract onSyncEnded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
.end method

.method public abstract onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V
.end method
