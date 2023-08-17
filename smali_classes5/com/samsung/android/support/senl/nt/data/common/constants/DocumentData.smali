.class public Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private categoryUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "uncategorized:///"
        name = "categoryUUID"
    .end annotation
.end field

.field private contentUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "contentUUID"
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "filePath"
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

.field private strokeUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "strokeUUID"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "UUID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->uuid:Ljava/lang/String;

    const-string v1, "uncategorized:///"

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->categoryUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->contentUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->strokeUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->categoryUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->contentUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getStrokeUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->strokeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->categoryUuid:Ljava/lang/String;

    return-void
.end method

.method public setContentUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->contentUuid:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->id:Ljava/lang/Long;

    return-void
.end method

.method public setStrokeUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->strokeUuid:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;->uuid:Ljava/lang/String;

    return-void
.end method
