.class public interface abstract Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clearChangedPageIdList()V
.end method

.method public abstract close(Z)V
.end method

.method public abstract discardData()V
.end method

.method public abstract dumpSpenDocument()V
.end method

.method public abstract getChangedPageIdList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCreatedTime()J
.end method

.method public abstract getInvalidPageIds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModifiedTime()J
.end method

.method public abstract getOwnerId()Ljava/lang/String;
.end method

.method public abstract getTitleText()Ljava/lang/String;
.end method

.method public abstract hasSnapSavedData()Z
.end method

.method public abstract insertBody(Ljava/lang/String;)V
.end method

.method public abstract insertTitle(Ljava/lang/String;)V
.end method

.method public abstract invertBackgroundColor(Z)V
.end method

.method public abstract isChangedOnlyThumbnail()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isContentChanged()Z
.end method

.method public abstract isContentEmpty()Z
.end method

.method public abstract isLocked()Z
.end method

.method public abstract isSaveCache()Z
.end method

.method public abstract quickSave(Ljava/lang/String;)V
.end method

.method public abstract reload()V
.end method

.method public abstract save(Landroid/content/Context;Ljava/lang/String;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAllPageIdList()V
.end method

.method public abstract setBackgroundColor(IZ)V
.end method

.method public abstract setChangedPageIdList()V
.end method

.method public abstract setSaveCache(Z)V
.end method

.method public abstract snapSave(Ljava/lang/String;Z)V
.end method
