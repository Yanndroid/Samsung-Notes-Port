.class public Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mNotesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesRestoreRepository"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->TAG:Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->notesRestoreDAO()Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->mNotesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    return-void
.end method


# virtual methods
.method public getCorruptNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->mNotesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->getCorruptNotes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSdocXInOldFolder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->mNotesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->getSdocXInOldFolder()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public repairUncategorizedFolder()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->TAG:Ljava/lang/String;

    const-string v1, "repairUncategorizedFolder"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->mNotesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->repairUncategorizedFolder()V

    return-void
.end method

.method public update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->mNotesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->update(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)I

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, entities : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/repository/restore/NotesRestoreRepository;->mNotesRestoreDAO:Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesRestoreDAO;->update(Ljava/util/List;)I

    return-void
.end method
