.class public Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

.field private final mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesLockDocumentRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesLockDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocCategoryTreeDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->lambda$getLockedNoteUuidsWithExcludeTypes$2(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->lambda$getLockedEntitiesWithExcludeTypes$1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;Ljava/util/Collection;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->lambda$getLockNoteCount$0(Ljava/util/List;Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->lambda$getEntities$3(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getEntities$3(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getEntities(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getLockNoteCount$0(Ljava/util/List;Ljava/util/Collection;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getLockNoteCount(Ljava/util/Collection;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$getLockedEntitiesWithExcludeTypes$1(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getLockedEntitiesWithExcludeTypes(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getLockedNoteUuidsWithExcludeTypes$2(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getLockedNoteUuidsWithExcludeTypes(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public changeAccountGuidByUuid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;->updateAccountGuidByUuid(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs changeLockGuidForUndefined(Ljava/lang/String;[I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeLockGuidForUndefined, lockAccountGuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , lockTypes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->updateLockGuidForUndefined(Ljava/lang/String;[I)V

    return-void
.end method

.method public find(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesCategoryTreeDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesCategoryTreeDAO;->getAllDocumentCategoryTree(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->findChildrenUuid()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->find(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllLockedDataCount(I)I
    .locals 3
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllLockedDataCount, deleteType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getAllLockedDataCount(I)I

    move-result p1

    return p1
.end method

.method public getEntities(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lh4/e;

    invoke-direct {v1, p0, p2}, Lh4/e;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLockNoteCount(Ljava/util/List;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;

    new-instance v1, Lh4/f;

    invoke-direct {v1, p0, p2}, Lh4/f;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor$CountFunction;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitCountTaskExecutor;->execute(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public getLockType(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockType, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getLockType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLockedEntitiesWithExcludeTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lh4/d;

    invoke-direct {v1, p0, p2}, Lh4/d;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLockedNoteUuidsWithExcludeTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    new-instance v1, Lh4/c;

    invoke-direct {v1, p0, p2}, Lh4/c;-><init>(Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs getPathListWithEmptyGuid([I)Ljava/util/List;
    .locals 1
    .param p1    # [I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->getPathListWithEmptyGuid([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public lockByUuid(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockByUuid, uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lockType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->lockByUuid(Ljava/lang/String;I)V

    return-void
.end method

.method public updateLockTypeAndLockGuid(Ljava/lang/String;IIJLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->mNotesLockDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesLockDocumentDAO;->updateLockTypeAndLockGuid(Ljava/lang/String;IIJLjava/lang/String;)V

    return-void
.end method
