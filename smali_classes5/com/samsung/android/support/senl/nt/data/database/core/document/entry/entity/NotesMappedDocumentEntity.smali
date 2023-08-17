.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "mappedUUID"
            }
        .end subannotation
    }
    tableName = "mapped_document"
.end annotation


# instance fields
.field private id:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private isConverted:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "1"
        name = "converted"
    .end annotation
.end field

.field private mappedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "mappedAt"
    .end annotation
.end field

.field private mappedUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "mappedUUID"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "UUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedUuid:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->isConverted:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedAt:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->id:J

    return-wide v0
.end method

.method public getIsConverted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->isConverted:I

    return v0
.end method

.method public getMappedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedAt:J

    return-wide v0
.end method

.method public getMappedUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->id:J

    return-void
.end method

.method public setIsConverted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->isConverted:I

    return-void
.end method

.method public setMappedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedAt:J

    return-void
.end method

.method public setMappedUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedUuid:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotesMappedDocumentEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mappedUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isConverted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->isConverted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mappedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesMappedDocumentEntity;->mappedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
