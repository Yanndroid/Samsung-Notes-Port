.class public Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;
    }
.end annotation


# instance fields
.field private fileExtension:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private folderUuid:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private highLightText:Ljava/lang/String;

.field private isDeleted:I

.field private isSdoc:Z

.field private lastModifiedAt:J

.field private lockType:I

.field private mdeOwnerId:Ljava/lang/String;

.field private modeIndex:I

.field private requestCode:I

.field private spaceId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private toolType:I

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setDeleted(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setFileExtension(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setFolderUuid(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setGroupId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setGuid(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setLastModifiedAt(J)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setLockType(I)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setMdeOwnerId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setRequestCode(I)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setSdoc(Z)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setSpaceId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method private setDeleted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->isDeleted:I

    return-void
.end method

.method private setFileExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method private setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->filePath:Ljava/lang/String;

    return-void
.end method

.method private setFolderUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->folderUuid:Ljava/lang/String;

    return-void
.end method

.method private setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->groupId:Ljava/lang/String;

    return-void
.end method

.method private setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->guid:Ljava/lang/String;

    return-void
.end method

.method private setLastModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->lastModifiedAt:J

    return-void
.end method

.method private setLockType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->lockType:I

    return-void
.end method

.method private setMdeOwnerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->mdeOwnerId:Ljava/lang/String;

    return-void
.end method

.method private setRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->requestCode:I

    return-void
.end method

.method private setSdoc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->isSdoc:Z

    return-void
.end method

.method private setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->spaceId:Ljava/lang/String;

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->title:Ljava/lang/String;

    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->folderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getHighLightText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->highLightText:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDeleted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->isDeleted:I

    return v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->lastModifiedAt:J

    return-wide v0
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->lockType:I

    return v0
.end method

.method public getMdeOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->mdeOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getModeIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->modeIndex:I

    return v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->requestCode:I

    return v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToolType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->toolType:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isSdoc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->isSdoc:Z

    return v0
.end method

.method public setHighLightText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->highLightText:Ljava/lang/String;

    return-void
.end method

.method public setModeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->modeIndex:I

    return-void
.end method

.method public setToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->toolType:I

    return-void
.end method
