.class public Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
.super Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
        "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
        "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PAGE_WIDTH:I = 0x438

.field public static final TAG:Ljava/lang/String; = "SpenWordDocRepository"


# instance fields
.field private mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

.field private mPageHeight:I

.field private mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

.field private mPageWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x438

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageWidth:I

    const/16 v0, 0x5f7

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageHeight:I

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageHeight:I

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v6, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->SPEN_SDOCX:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    const/16 p1, 0x438

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageWidth:I

    const/16 p1, 0x5f7

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageHeight:I

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->initialize()V

    return-void
.end method

.method public static create(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 8
    .param p0    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-object v7
.end method

.method public static create(Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 8
    .param p0    # Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLoadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockConfirm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getCaller()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-object v7
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-object v7
.end method

.method public static createSpenWordDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "create spen document - end"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSpenWordDocument, repository : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenWordDocRepository"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLoadPath()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-static {p0, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->hasSnapSavedData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create spen document - start, loadFileExists: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", existSnapData: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", path: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->getOrientation()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->getOrientation()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->getPageWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->getPageHeight()I

    move-result v1

    :goto_0
    move v7, v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v8

    move-object v4, p0

    move v9, p2

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->create(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->getPageWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getMode()I

    move-result v7

    const/4 v8, 0x0

    move-object v4, p0

    move v9, p2

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->create(Landroid/content/Context;Ljava/lang/String;IIZZ)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Document was already deleted permanently"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method private initialize()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setDocumentEntity(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWordDocRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustDocument, data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWordDocRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getDefaultPageHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPageDefaultNumber()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->adjustSize(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPenColorType()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getDefaultBackgroundColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getColorSet()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->convertColors(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/util/Map;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPenColorType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getColorSet()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->convertLastPenInfo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILjava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "adjustDocument, data was not set."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clone()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "**>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->create(Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->clone()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    return-object v0
.end method

.method public createLoadDatabaseRunnable(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository$2;-><init>(Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createSpenDocument(Landroid/content/Context;[Ljava/lang/String;IZZ)Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->createSpenDocument(Landroid/content/Context;[Ljava/lang/String;IZZ)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object p1

    return-object p1
.end method

.method public createSpenDocument(Landroid/content/Context;[Ljava/lang/String;IZZ)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p0, p5}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->createSpenWordDocument(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object p1

    return-object p1
.end method

.method public createThumbnail(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbnail, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWordDocRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->saveThumbnail(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->sendForceUpdateBroadcast(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V

    return-void
.end method

.method public bridge synthetic deleteDatabase(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->deleteDatabase(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;)Z

    move-result p1

    return p1
.end method

.method public deleteDatabase(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteDatabase, entity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWordDocRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getCaller()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->delete(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageHeight:I

    return v0
.end method

.method public getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object v0
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageWidth:I

    return v0
.end method

.method public loadDatabase(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadDatabase, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenWordDocRepository"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->createLoadDatabaseRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    return-void
.end method

.method public bridge synthetic rollbackDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    check-cast p4, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->rollbackDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Z

    move-result p1

    return p1
.end method

.method public rollbackDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;)Z
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getRollbackEntity()Landroid/os/Parcelable;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rollbackDatabase, entity : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SpenWordDocRepository"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getLoadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getCaller()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move-object v0, p1

    move v1, p2

    move-object v4, p4

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->save(Landroid/content/Context;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ZILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public saveAutoTitle(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenWordDocRepository"

    const-string v1, "saveAutoTitle"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->updateRecommendedTitle(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic saveToDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Z)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;

    check-cast p4, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->saveToDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Z)Z

    move-result p1

    return p1
.end method

.method public saveToDatabase(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Z)Z
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveToDatabase, isChangedOnlyThumbnail : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isChangedOnlyThumbnail()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenWordDocRepository"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4000

    :try_start_0
    invoke-interface/range {p5 .. p5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;->getLoadPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSaveStrategy()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->createDatabaseStrategy(Lcom/samsung/android/support/senl/cm/base/common/util/DataStrategy;)I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getCaller()Ljava/lang/String;

    move-result-object v11

    move-object v3, p1

    move v4, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    invoke-static/range {v3 .. v11}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->save(Landroid/content/Context;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ZILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->removeSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    throw v0
.end method

.method public setOrientation(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    return-object p0
.end method

.method public setPageHeight(I)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageHeight:I

    return-object p0
.end method

.method public setPageMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object p0
.end method

.method public setPageWidth(I)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageWidth:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SpenWordDocRepository{uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", doc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getSpenDocument()Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPageMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mOrientation:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
