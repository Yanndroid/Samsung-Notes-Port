.class public Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCategoryTreeClosureRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

.field private final mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->mCategoryTreeClosureRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    return-void
.end method


# virtual methods
.method public isInvalidRelationShip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->mCategoryTreeClosureRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;->checkRelationShip(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;-><init>(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)V

    throw p2
.end method

.method public isInvalidRelationShip(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->mCategoryTreeClosureRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;->checkRelationShipByUuids(Ljava/util/Collection;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;-><init>(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)V

    throw p2
.end method

.method public isInvalidRelationShip(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->mCategoryTreeClosureRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;->checkRelationShip(Ljava/util/Collection;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;-><init>(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)V

    throw v0
.end method

.method public isInvalidRelationShip(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->mCategoryTreeClosureRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeClosureRepository;->checkRelationShip(Ljava/util/Collection;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;-><init>(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)V

    throw p2
.end method

.method public isUsed(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/category/ParentFolderChecker;->mCategoryTreeRepository:Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->isUsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;

    const/16 v1, 0x66

    const-string v2, ""

    invoke-direct {v0, v2, p1, v1}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException;-><init>(Lcom/samsung/android/support/senl/nt/data/common/exceptions/InvalidParentFolderException$Info;)V

    throw p1
.end method
