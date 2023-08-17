.class public Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesRecycleBinRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesRecycleBinDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    return-void
.end method


# virtual methods
.method public correctRecycleBinTime(JJ)I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "correctRecycleBinTime, currentTimestamp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", serverTimestamp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->correctRecycleBinTime(JJ)I

    move-result p1

    return p1
.end method

.method public getAllFilePathsInRecycleBin()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    const-string v1, "getAllFilePathsInRecycleBin"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->getAllFilePathsInRecycleBin(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMainListRecycleBin(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllRecycleBinDataList, isDesc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->getAll_MainListRecycleBin(IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllRecycleBinDataList(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllRecycleBinDataList, sortParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->getAll(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllRecycleBinDataList(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllRecycleBinDataList, isDesc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->getAll(IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllRecycleBinDatas_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllRecycleBinDatas_LiveData, sortParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->getAll_LiveData(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentsInRecycleBin(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh4/g;

    invoke-direct {v2, v1}, Lh4/g;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFoldersInRecycleBin(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lh4/h;

    invoke-direct {v2, v1}, Lh4/h;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;)V

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;-><init>(Landroidx/arch/core/util/Function;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SplitTaskExecutor;->execute(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->TAG:Ljava/lang/String;

    const-string v1, "getItemCount"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->getItemCount(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;->mNotesRecycleBinDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRecycleBinDocumentDAO;->isEmpty()Z

    move-result v0

    return v0
.end method
