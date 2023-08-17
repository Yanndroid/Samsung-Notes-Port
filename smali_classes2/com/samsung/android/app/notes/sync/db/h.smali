.class public Lcom/samsung/android/app/notes/sync/db/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "root"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string/jumbo p0, "trash:///"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "uncategorized:///"

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static b(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;II)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .locals 5
    .param p0    # Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDirty(I)V

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setServerTimeStamp(Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->createdTime:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setCreatedAt(J)V

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->lastModifiedTime:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setLastModifiedAt(J)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsDeleted(I)V

    iget-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setRecycleBinTimeMoved(J)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->isSyncWithMS:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setIsSyncWithMS(I)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setDisplayNameColor(I)V

    iget p0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->setReorder(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static c(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createLocalFolder() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderTreeUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/app/notes/sync/db/h;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/db/h;->b(Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;II)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p0

    return-object p0
.end method
