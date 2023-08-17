.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "document_template"
.end annotation


# instance fields
.field private createdAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "createdAt"
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_data"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "_display_name"
    .end annotation
.end field

.field private height:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "height"
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private lastModifiedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "lastModifiedAt"
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "mime_type"
    .end annotation
.end field

.field private size:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "_size"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "title"
    .end annotation
.end field

.field private type:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "3"
        name = "type"
    .end annotation
.end field

.field private width:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->type:I

    return-void
.end method


# virtual methods
.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->createdAt:J

    return-wide v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->height:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->lastModifiedAt:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->size:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->width:I

    return v0
.end method

.method public setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->createdAt:J

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->data:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->height:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLastModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->lastModifiedAt:J

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->size:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->type:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->width:I

    return-void
.end method
