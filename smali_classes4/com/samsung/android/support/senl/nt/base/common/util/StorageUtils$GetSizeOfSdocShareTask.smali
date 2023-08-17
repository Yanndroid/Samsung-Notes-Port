.class public Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;
.super Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSizeOfSdocShareTask"
.end annotation


# instance fields
.field private createdAt:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private lastModifiedAt:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocTask;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->createdAt:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->lastModifiedAt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedAt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->lastModifiedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils$GetSizeOfSdocShareTask;->uuid:Ljava/lang/String;

    return-object v0
.end method
