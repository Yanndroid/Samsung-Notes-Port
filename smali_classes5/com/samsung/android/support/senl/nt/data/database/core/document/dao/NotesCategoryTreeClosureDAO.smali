.class public abstract Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRelationShip(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;
    .locals 2
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->hasRelationShip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    const/16 v1, 0x64

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->isDepthBiggerThanLimit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    const/16 v1, 0x65

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkRelationShip(Ljava/util/Collection;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getParentUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->checkRelationShip(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkRelationShip(Ljava/util/Collection;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->checkRelationShip(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkRelationShipByUuids(Ljava/util/Collection;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->checkRelationShip(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getEntities(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM category_tree_closure WHERE descendant = :descendantUuid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeClosureEntity;",
            ">;"
        }
    .end annotation
.end method

.method public getFoldersWithRelationShip(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->hasRelationShip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract getMaxChildDepth(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT MAX(depth) FROM category_tree_closure WHERE ancestor = :folderUuid"
    .end annotation
.end method

.method public abstract getMaxDepth(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT MAX(depth) FROM category_tree_closure WHERE descendant = :folderUuid"
    .end annotation
.end method

.method public abstract hasRelationShip(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) > 0 FROM category_tree_closure WHERE ancestor = :ancestorUuid AND descendant = :descendantUuid"
    .end annotation
.end method

.method public isDepthBiggerThanLimit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->getMaxChildDepth(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->getMaxDepth(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    add-int/2addr v0, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeClosureDAO;->getMaxDepth(Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v0

    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
