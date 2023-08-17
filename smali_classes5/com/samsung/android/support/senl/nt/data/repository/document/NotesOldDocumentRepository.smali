.class public Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesOldDocumentRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->TAG:Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesOldDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    return-void
.end method


# virtual methods
.method public getAll_OldNotes(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;
    .locals 3
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAll_OldNotes, deleteType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sortParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;->getAll_OldNotes(ILcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAll_OldNotesCount(I)I
    .locals 3
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAll_OldNotesCount, deleteType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;->getAll_OldNotes_Count(I)I

    move-result p1

    return p1
.end method

.method public getAll_OldNotes_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;
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

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAll_OldNotes_LiveData, sortParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->mNotesOldDocumentDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesOldDocumentDAO;->getAll_OldNotes_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
