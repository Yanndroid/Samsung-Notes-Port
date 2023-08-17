.class public Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NT/NoteDbResolver"


# instance fields
.field private documentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field public mAppContext:Landroid/content/Context;

.field private mDocUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mAppContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->documentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->documentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[9-2] No coedit note : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NT/NoteDbResolver"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->documentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    const-string v1, "NT/NoteDbResolver"

    if-nez v0, :cond_0

    const-string v0, "[9-2] No Entity, No groupId"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[9-2] No groupId!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->documentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    const-string v1, "NT/NoteDbResolver"

    if-nez v0, :cond_0

    const-string v0, "[9-2] No Entity, No itemId"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[9-2] No itemId!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getReferenceResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NT/NoteDbResolver"

    const-string v2, "[9-2] No workspaceId!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public setCommitId(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "NT/NoteDbResolver"

    const-string v0, "[9-2] setCommitId() : No commitId!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateCommitId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWorkspaceId(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "NT/NoteDbResolver"

    const-string v0, "[9-2] setWorkspaceId() : No workspaceId!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->setReferenceResourceId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateTitleAndModifiedTime(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->documentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CoeditCacheUtils;->isLocalDataChanged(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NT/NoteDbResolver"

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[9-2] updateTitleAndModifiedTime, isLocalDataChanged "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[9-2] updateTitleAndModifiedTime, is old coedit note "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isRunningOnCoeditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "[9-2] updateTitleAndModifiedTime, stop, isRunningOnCoeditMode"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->documentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-gtz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/converter/DisplayDataConverter;->convertDisplayData(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->updateTitle(Ljava/lang/String;Ljava/lang/String;[B)I

    new-instance p1, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->mDocUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateModifiedTime(Ljava/lang/String;J)V

    return-void
.end method
