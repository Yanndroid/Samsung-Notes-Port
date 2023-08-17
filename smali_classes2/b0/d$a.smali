.class public Lb0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lb0/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb0/e;

    invoke-direct {v0}, Lb0/e;-><init>()V

    iput-object v0, p0, Lb0/d$a;->b:Lb0/e;

    iput-object p1, p0, Lb0/d$a;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb0/e;

    invoke-direct {v0}, Lb0/e;-><init>()V

    iput-object v0, p0, Lb0/d$a;->b:Lb0/e;

    iput-object p1, p0, Lb0/d$a;->a:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {p2, p1}, Lb0/e;->f(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lb0/e;
    .locals 7

    const-string v0, "SaveParamBuilder"

    iget-object v1, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v1}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lb0/d$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getAllDocumentCategoryTree(Z)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v1

    iget-object v2, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->getChild(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    iget-object v2, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    iget-object v2, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v2}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "old:///Uncategorized"

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setAbsolutePath(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v1}, Lb0/e;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v1}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getCreatedTime(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v3}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createdTime is 0. so set it to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, v3

    :cond_2
    iget-object v5, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v5}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;->setTime(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "SaveParam file failed getModifiedTime"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    return-object v0
.end method

.method public b(J)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setCategoryServerTimeStamp(Ljava/lang/Long;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Z)Lb0/d$a;
    .locals 0

    return-object p0
.end method

.method public e(J)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCreatedAt(J)V

    return-object p0
.end method

.method public f(Ljava/lang/Integer;)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDeleted(I)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsFavorite(I)V

    return-object p0
.end method

.method public i(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsDirty(I)V

    return-object p0
.end method

.method public j(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setImported(Z)V

    return-object p0
.end method

.method public k(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsSynced(Z)V

    return-object p0
.end method

.method public l(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0, p1}, Lb0/e;->e(Z)V

    return-object p0
.end method

.method public m(J)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setLastModifiedAt(J)V

    return-object p0
.end method

.method public n(Ljava/lang/Integer;)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setIsLock(I)V

    return-object p0
.end method

.method public o(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0, p1}, Lb0/e;->d(Z)V

    return-object p0
.end method

.method public p(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setRemoveActionLinkData(Z)V

    return-object p0
.end method

.method public q(Z)Lb0/d$a;
    .locals 0

    return-object p0
.end method

.method public r(J)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setServerTimestamp(Ljava/lang/Long;)V

    iget-object p1, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {p1}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setKeepServerTimestamp(Z)V

    return-object p0
.end method

.method public s(Z)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUpdateStrokeSearchData(Z)V

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lb0/d$a;
    .locals 1

    iget-object v0, p0, Lb0/d$a;->b:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->c()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    return-object p0
.end method
