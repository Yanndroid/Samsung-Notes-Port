.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/ViewContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract initFolderDataMap()V
.end method

.method public abstract isFreeFormWindow()Z
.end method

.method public abstract isRunningAnimator()Z
.end method

.method public abstract onFolderSelected(Ljava/lang/String;I)V
.end method

.method public abstract setPostNotifyDataSetChanged()V
.end method

.method public abstract updateDocumentCountMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDrawerBar()V
.end method

.method public abstract updateNewBadge()V
.end method

.method public abstract updateNoteViewByDrawerObserver()V
.end method

.method public abstract verifyForDelete()V
.end method
