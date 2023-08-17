.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "documentUUID",
                "UUID"
            }
        .end subannotation
    }
    tableName = "document_page"
.end annotation


# instance fields
.field private documentUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "documentUUID"
    .end annotation
.end field

.field private favorite:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "favorite"
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

.field private index:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "index"
    .end annotation
.end field

.field private isDeleted:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isDeleted"
    .end annotation
.end field

.field private isDirty:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "1"
        name = "isDirty"
    .end annotation
.end field

.field private pageUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "UUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->pageUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->documentUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->isDeleted:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->isDirty:I

    return-void
.end method


# virtual methods
.method public getDocumentUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->documentUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorite()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->favorite:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->id:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->index:I

    return v0
.end method

.method public getIsDeleted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->isDeleted:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->isDirty:I

    return v0
.end method

.method public getPageUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->pageUuid:Ljava/lang/String;

    return-object v0
.end method

.method public setDocumentUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->documentUuid:Ljava/lang/String;

    return-void
.end method

.method public setFavorite(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->favorite:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->id:J

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->index:I

    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->isDeleted:I

    return-void
.end method

.method public setIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->isDirty:I

    return-void
.end method

.method public setPageUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentPageEntity;->pageUuid:Ljava/lang/String;

    return-void
.end method
