.class public interface abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getChildren()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/sort/FolderSortData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCreatedAt()J
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayNameColor()I
.end method

.method public abstract getLastModifiedAt()J
.end method

.method public abstract getRecycleBinTimeMoved()J
.end method

.method public abstract getReorder()Ljava/lang/Integer;
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method
