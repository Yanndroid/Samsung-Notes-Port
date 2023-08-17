.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;
.super Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SortQuery;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SortQuery;-><init>()V

    return-void
.end method

.method private getPinFavoriteQuery()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( case when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isFavorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is 0 then 0 else 1 end ) desc, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createQuery(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;->getIsPinFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/document/DocumentSortQuery;->getPinFavoriteQuery()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/SortQuery;->createQuery(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreatedTimeColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "createdAt"

    return-object v0
.end method

.method public getImportedTimeColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "importedAt"

    return-object v0
.end method

.method public getLastModifiedTimeColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "lastModifiedAt"

    return-object v0
.end method

.method public getLastOpenedTimeColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "lastOpenedAt"

    return-object v0
.end method

.method public getRecycleBinMovedTimeColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "recycle_bin_time_moved"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "sdoc"

    return-object v0
.end method

.method public getTitleColumn()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    return-object v0
.end method
