.class public Lr0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

.field public final b:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

.field public final c:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    move-result-object v0

    iput-object v0, p0, Lr0/c;->a:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->sdocDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    move-result-object v0

    iput-object v0, p0, Lr0/c;->b:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesMappedDocumentDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    move-result-object p1

    iput-object p1, p0, Lr0/c;->c:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "SyncMappedDocumentRepository"

    const-string v1, "clearTable"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lr0/c;->c:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ZJ)Landroid/util/Pair;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ)",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert, originalDocumentUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mappedDocumentUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ServerTimestamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isConverted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncMappedDocumentRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lr0/c;->c:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;

    iget-object v3, p0, Lr0/c;->b:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p4

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesMappedDocumentDAO;->insert(Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDocumentDAO;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
