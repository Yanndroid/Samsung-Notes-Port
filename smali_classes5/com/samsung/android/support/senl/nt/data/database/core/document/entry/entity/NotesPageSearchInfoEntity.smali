.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "page_search_info"
.end annotation


# instance fields
.field private contentSource:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "contentSource"
    .end annotation

    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
    .end annotation
.end field

.field private documentUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "sdocUUID"
    .end annotation
.end field

.field private id:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private isDirty:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isDirty"
    .end annotation
.end field

.field private lastContentModifiedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "lastContentModifiedAt"
    .end annotation
.end field

.field private lastSearchModifiedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "lastSearchModifiedAt"
    .end annotation
.end field

.field private pageUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "pageUuid"
    .end annotation
.end field

.field private searchSource:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "searchSource"
    .end annotation

    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->documentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->pageUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->isDirty:I

    return-void
.end method


# virtual methods
.method public getContentSource()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->contentSource:I

    return v0
.end method

.method public getDocumentUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->documentUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->id:J

    return-wide v0
.end method

.method public getIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->isDirty:I

    return v0
.end method

.method public getLastContentModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->lastContentModifiedAt:J

    return-wide v0
.end method

.method public getLastSearchModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->lastSearchModifiedAt:J

    return-wide v0
.end method

.method public getPageUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->pageUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchSource()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->searchSource:I

    return v0
.end method

.method public setContentSource(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->contentSource:I

    return-void
.end method

.method public setDocumentUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->documentUuid:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->id:J

    return-void
.end method

.method public setIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->isDirty:I

    return-void
.end method

.method public setLastContentModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->lastContentModifiedAt:J

    return-void
.end method

.method public setLastSearchModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->lastSearchModifiedAt:J

    return-void
.end method

.method public setPageUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->pageUuid:Ljava/lang/String;

    return-void
.end method

.method public setSearchSource(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->searchSource:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "docUuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->documentUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageUuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->pageUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentSrc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->contentSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", searchSrc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->searchSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedAt content/search: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->lastContentModifiedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->lastSearchModifiedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDirty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesPageSearchInfoEntity;->isDirty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
