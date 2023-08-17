.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "stroke"
.end annotation


# static fields
.field public static final TYPE_ACTIONLINK:I = 0x2

.field public static final TYPE_AUDIO:I = 0x5

.field public static final TYPE_PDF_TEXT:I = 0x3

.field public static final TYPE_STROKE:I = 0x1

.field public static final TYPE_TEXT_BOX:I = 0x0

.field public static final TYPE_VOICE_RECORDING:I = 0x4


# instance fields
.field private actionLinkData:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "actionLinkData"
    .end annotation
.end field

.field private bottom:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "bottom"
    .end annotation
.end field

.field private docUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "sdocUUID"
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "filePath"
    .end annotation
.end field

.field private hasVisualCue:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "hasVisualCue"
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

.field private left:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "left"
    .end annotation
.end field

.field private pageUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "pageUuid"
    .end annotation
.end field

.field private pageWidth:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "pageWidth"
    .end annotation
.end field

.field private right:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "right"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "text"
    .end annotation
.end field

.field private top:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "top"
    .end annotation
.end field

.field private type:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->docUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->pageUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionLinkData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->actionLinkData:Ljava/lang/String;

    return-object v0
.end method

.method public getBottom()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->bottom:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDocUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->docUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHasVisualCue()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->hasVisualCue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLeft()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->left:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->pageUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPageWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->pageWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->right:Ljava/lang/Integer;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->top:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->type:I

    return v0
.end method

.method public setActionLinkData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->actionLinkData:Ljava/lang/String;

    return-void
.end method

.method public setBottom(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->bottom:Ljava/lang/Integer;

    return-void
.end method

.method public setDocUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->docUuid:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setHasVisualCue(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->hasVisualCue:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLeft(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->left:Ljava/lang/Integer;

    return-void
.end method

.method public setPageUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->pageUuid:Ljava/lang/String;

    return-void
.end method

.method public setPageWidth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->pageWidth:Ljava/lang/Integer;

    return-void
.end method

.method public setRight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->right:Ljava/lang/Integer;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public setTop(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->top:Ljava/lang/Integer;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesStrokeSearchEntity;->type:I

    return-void
.end method
