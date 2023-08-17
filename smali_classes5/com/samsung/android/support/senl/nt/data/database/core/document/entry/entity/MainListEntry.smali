.class public Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private absolutePath:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "absolutePath"
    .end annotation
.end field

.field private backgroundColor:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "backgroundColor"
    .end annotation
.end field

.field private backgroundColorInverted:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "backgroundColorInverted"
    .end annotation
.end field

.field private categoryUuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "uncategorized:///"
        name = "categoryUUID"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "content"
        typeAffinity = 0x5
    .end annotation
.end field

.field private contentSecureVersion:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "contentSecureVersion"
    .end annotation
.end field

.field private contentUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "contentUUID"
    .end annotation
.end field

.field private corrupted:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "corrupted"
    .end annotation
.end field

.field private createdAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "createdAt"
    .end annotation
.end field

.field private deleteRecommended:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "deleteRecommended"
    .end annotation
.end field

.field private dirtySkipped:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private displayContent:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "displayContent"
        typeAffinity = 0x5
    .end annotation
.end field

.field private displayTitle:[B
    .annotation build Landroidx/room/ColumnInfo;
        name = "displayTitle"
        typeAffinity = 0x5
    .end annotation
.end field

.field private fileExtension:Ljava/lang/String;
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtension;
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "filePath"
    .end annotation
.end field

.field private firstContentType:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "firstContentType"
    .end annotation
.end field

.field private firstHandwritingHeight:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "firstHandwritingHeight"
    .end annotation
.end field

.field private firstOpendAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "firstOpendAt"
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

.field private importedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "importedAt"
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

.field private isFavorite:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isFavorite"
    .end annotation
.end field

.field private isImported:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private isLock:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isLock"
    .end annotation

    .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
    .end annotation
.end field

.field private isSavingByWhichPid:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "isSaving"
    .end annotation
.end field

.field private isSynced:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private keepServerTimestamp:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private lastMappedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "lastMappedAt"
    .end annotation
.end field

.field private lastModifiedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "lastModifiedAt"
    .end annotation
.end field

.field private lastOpenedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "lastOpenedAt"
    .end annotation
.end field

.field private lockAccountGuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "lockAccountGuid"
    .end annotation
.end field

.field private mPendingNotification:Lcom/samsung/android/support/senl/nt/data/common/pendingIntent/PendingNotification;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private mdeExtra:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "mdeExtra"
    .end annotation
.end field

.field private mdeGroupId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "mdeGroupId"
    .end annotation
.end field

.field private mdeItemId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "mdeItemId"
    .end annotation
.end field

.field private mdeOwnerId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "mdeOwnerId"
    .end annotation
.end field

.field private mdeSpaceId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "mdeSpaceId"
    .end annotation
.end field

.field private originUuid:Ljava/lang/String;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private pageMode:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "pageMode"
    .end annotation
.end field

.field private recommendedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "recommendedAt"
    .end annotation
.end field

.field private recommendedTitle:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "recommendedTitle"
    .end annotation
.end field

.field private recycleBinTimeMoved:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "recycle_bin_time_moved"
    .end annotation
.end field

.field private reminderRequestCode:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "reminderRequestCode"
    .end annotation
.end field

.field private reminderTriggerTime:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "reminderTriggerTime"
    .end annotation
.end field

.field private removeActionLinkData:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private saveType:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "saveType"
    .end annotation
.end field

.field private secondContentType:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "secondContentType"
    .end annotation
.end field

.field private secondOpenedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "secondOpenedAt"
    .end annotation
.end field

.field private serverId:Ljava/lang/String;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private size:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "size"
    .end annotation
.end field

.field private strokeRatio:Ljava/lang/Float;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0.0"
        name = "strokeRatio"
        typeAffinity = 0x4
    .end annotation
.end field

.field private strokeUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "strokeUUID"
    .end annotation
.end field

.field private final timeSaveParam:Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "title"
    .end annotation
.end field

.field private updateContents:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private updateStrokeInWorkerThread:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private updateStrokeSearchData:Z
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "UUID"
    .end annotation
.end field

.field private vrUuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = ""
        name = "vrUUID"
    .end annotation
.end field

.field private widgetId:I
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->uuid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDeleted:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirty:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->content:Ljava/lang/String;

    new-array v4, v1, [B

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayContent:[B

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->createdAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastModifiedAt:J

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->vrUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentUuid:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    const-string v2, "uncategorized:///"

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->categoryUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->filePath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isFavorite:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isLock:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSavingByWhichPid:I

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderTriggerTime:J

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderRequestCode:I

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recycleBinTimeMoved:J

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentSecureVersion:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->size:I

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayTitle:[B

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->saveType:I

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstOpendAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondOpenedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastOpenedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->importedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastMappedAt:J

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeSpaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeItemId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeExtra:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeGroupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeOwnerId:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstHandwritingHeight:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->deleteRecommended:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->absolutePath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColor:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColorInverted:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->corrupted:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->pageMode:I

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeSearchData:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->dirtySkipped:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->widgetId:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->keepServerTimestamp:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->timeSaveParam:Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeInWorkerThread:Z

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateContents:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->originUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->uuid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDeleted:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirty:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->content:Ljava/lang/String;

    new-array v4, v1, [B

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayContent:[B

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->createdAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastModifiedAt:J

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->vrUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentUuid:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    const-string v2, "uncategorized:///"

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->categoryUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->filePath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isFavorite:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isLock:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSavingByWhichPid:I

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderTriggerTime:J

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderRequestCode:I

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recycleBinTimeMoved:J

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentSecureVersion:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->size:I

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayTitle:[B

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->saveType:I

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstOpendAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondOpenedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastOpenedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->importedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedAt:J

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastMappedAt:J

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeSpaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeItemId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeExtra:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeGroupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeOwnerId:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstHandwritingHeight:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->deleteRecommended:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->absolutePath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColor:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColorInverted:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->corrupted:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->pageMode:I

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeSearchData:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->dirtySkipped:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->widgetId:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->keepServerTimestamp:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->timeSaveParam:Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeInWorkerThread:Z

    iput-boolean v3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateContents:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->originUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->id:Ljava/lang/Long;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->uuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDeleted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->content:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayContent:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->createdAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastModifiedAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->vrUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->categoryUuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isFavorite:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isLock:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSavingByWhichPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderTriggerTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderRequestCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recycleBinTimeMoved:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentSecureVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->size:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayTitle:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->saveType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstOpendAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondOpenedAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastOpenedAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->importedAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeSpaceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeItemId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeExtra:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeGroupId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeOwnerId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstHandwritingHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->deleteRecommended:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->absolutePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isImported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->removeActionLinkData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeSearchData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->dirtySkipped:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->widgetId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->keepServerTimestamp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeInWorkerThread:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateContents:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->serverId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->fileExtension:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastMappedAt:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSynced:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColorInverted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lockAccountGuid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->corrupted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->pageMode:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->clone()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDirty()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDirty()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getReminderTriggerTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getReminderTriggerTime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getReminderRequestCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getReminderRequestCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecycleBinTimeMoved()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecycleBinTimeMoved()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentSecureVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentSecureVersion()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondOpenedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondOpenedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastOpenedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastOpenedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getImportedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getImportedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastMappedAt()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastMappedAt()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstHandwritingHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstHandwritingHeight()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isImported()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isImported()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isRemoveActionLinkData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isRemoveActionLinkData()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColorInverted()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColorInverted()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getPageMode()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getPageMode()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstContentType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstContentType()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondContentType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondContentType()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeRatio()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeRatio()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLockAccountGuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColor:I

    return v0
.end method

.method public getBackgroundColorInverted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColorInverted:I

    return v0
.end method

.method public getCategoryUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->categoryUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContentSecureVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentSecureVersion:I

    return v0
.end method

.method public getContentUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrupted()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->corrupted:I

    return v0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->createdAt:J

    return-wide v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", vrUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->vrUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", strokeUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", widgetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->widgetId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSavingByWhichPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSavingByWhichPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundColorInverted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColorInverted:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contentUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firstContentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", secondContentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", strokeRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reminderTriggerTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reminderRequestCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderRequestCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contentSecureVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentSecureVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", saveType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->saveType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", firstOpendAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstOpendAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", secondOpenedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondOpenedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastOpenedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastOpenedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", importedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->importedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", recommendedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mdeSpaceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mdeItemId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeItemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mdeExtra=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mdeGroupId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mdeOwnerId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeOwnerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", firstHandwritingHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstHandwritingHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleteRecommended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->deleteRecommended:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isImported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isImported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", removeActionLinkData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->removeActionLinkData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateStrokeSearchData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeSearchData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dirtySkipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->dirtySkipped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteRecommended()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->deleteRecommended:I

    return v0
.end method

.method public getDisplayContent()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayContent:[B

    return-object v0
.end method

.method public getDisplayTitle()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayTitle:[B

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->fileExtension:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFileExtension(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstContentType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFirstHandwritingHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstHandwritingHeight:I

    return v0
.end method

.method public getFirstOpendAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstOpendAt:J

    return-wide v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImportedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->importedAt:J

    return-wide v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->originUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isDeleted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDeleted:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirty:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recommendedTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pageMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->pageMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastModifiedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastModifiedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastMappedAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastMappedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", categoryUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->categoryUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recycleBinTimeMoved="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recycleBinTimeMoved:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isFavorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isFavorite:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isLock:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", corrupted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->corrupted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lockAccountGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lockAccountGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsDeleted()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDeleted:I

    return v0
.end method

.method public getIsDirty()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirty:I

    return v0
.end method

.method public getIsFavorite()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isFavorite:I

    return v0
.end method

.method public getIsLock()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isLock:I

    return v0
.end method

.method public getIsSavingByWhichPid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSavingByWhichPid:I

    return v0
.end method

.method public getIsSynced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSynced:Z

    return v0
.end method

.method public getKeepServerTimestamp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->keepServerTimestamp:Z

    return v0
.end method

.method public getLastMappedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastMappedAt:J

    return-wide v0
.end method

.method public getLastModifiedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastModifiedAt:J

    return-wide v0
.end method

.method public getLastOpenedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastOpenedAt:J

    return-wide v0
.end method

.method public getLockAccountGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lockAccountGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMdeExtra()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getMdeGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMdeItemId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getMdeOwnerId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getMdeSpaceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->originUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPageMode()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/PageMode;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->pageMode:I

    return v0
.end method

.method public getPendingNotification()Lcom/samsung/android/support/senl/nt/data/common/pendingIntent/PendingNotification;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mPendingNotification:Lcom/samsung/android/support/senl/nt/data/common/pendingIntent/PendingNotification;

    return-object v0
.end method

.method public getRecommendedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedAt:J

    return-wide v0
.end method

.method public getRecommendedTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRecycleBinTimeMoved()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recycleBinTimeMoved:J

    return-wide v0
.end method

.method public getReminderRequestCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderRequestCode:I

    return v0
.end method

.method public getReminderTriggerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderTriggerTime:J

    return-wide v0
.end method

.method public getSaveType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->saveType:I

    return v0
.end method

.method public getSecondContentType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSecondOpenedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondOpenedAt:J

    return-wide v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->size:I

    return v0
.end method

.method public getStrokeRatio()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    return-object v0
.end method

.method public getStrokeUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSaveParam()Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->timeSaveParam:Lcom/samsung/android/support/senl/nt/data/common/constants/TimeSaveParam;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVrUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->vrUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->widgetId:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDirty()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCreatedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastModifiedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentUuid()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstContentType()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondContentType()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeUuid()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getStrokeRatio()Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsSavingByWhichPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getReminderTriggerTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getReminderRequestCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecycleBinTimeMoved()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getContentSecureVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSaveType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getSecondOpenedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastOpenedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getImportedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getRecommendedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLastMappedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x21

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeExtra()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x22

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x23

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x24

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstHandwritingHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x25

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDeleteRecommended()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x26

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x27

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x28

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getBackgroundColorInverted()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x29

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getPageMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayContent()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getDisplayTitle()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDirtySkipped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->dirtySkipped:Z

    return v0
.end method

.method public isImported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isImported:Z

    return v0
.end method

.method public isRemoveActionLinkData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->removeActionLinkData:Z

    return v0
.end method

.method public isSdoc()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".sdoc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSdocx()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".sdocx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUpdateContents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateContents:Z

    return v0
.end method

.method public isUpdateStrokeInWorkerThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeInWorkerThread:Z

    return v0
.end method

.method public isUpdateStrokeSearchData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeSearchData:Z

    return v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColor:I

    return-void
.end method

.method public setBackgroundColorInverted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColorInverted:I

    return-void
.end method

.method public setCategoryUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->categoryUuid:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->content:Ljava/lang/String;

    return-void
.end method

.method public setContentSecureVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentSecureVersion:I

    return-void
.end method

.method public setContentUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentUuid:Ljava/lang/String;

    return-void
.end method

.method public setCorrupted(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->corrupted:I

    return-void
.end method

.method public setCreatedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->createdAt:J

    return-void
.end method

.method public setDeleteRecommended(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->deleteRecommended:I

    return-void
.end method

.method public setDirtySkipped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->dirtySkipped:Z

    return-void
.end method

.method public setDisplayContent([B)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayContent:[B

    return-void
.end method

.method public setDisplayTitle([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayTitle:[B

    return-void
.end method

.method public setFileExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->fileExtension:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFileExtension(Ljava/lang/String;)V

    return-void
.end method

.method public setFirstContentType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    return-void
.end method

.method public setFirstHandwritingHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstHandwritingHeight:I

    return-void
.end method

.method public setFirstOpendAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstOpendAt:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->id:Ljava/lang/Long;

    return-void
.end method

.method public setImported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isImported:Z

    return-void
.end method

.method public setImportedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->importedAt:J

    return-void
.end method

.method public setIsDeleted(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDeleted:I

    return-void
.end method

.method public setIsDirty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirty:I

    return-void
.end method

.method public setIsFavorite(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isFavorite:I

    return-void
.end method

.method public setIsLock(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isLock:I

    return-void
.end method

.method public setIsSavingByWhichPid(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSavingByWhichPid:I

    return-void
.end method

.method public setIsSynced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSynced:Z

    return-void
.end method

.method public setKeepServerTimestamp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->keepServerTimestamp:Z

    return-void
.end method

.method public setLastMappedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastMappedAt:J

    return-void
.end method

.method public setLastModifiedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastModifiedAt:J

    return-void
.end method

.method public setLastOpenedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastOpenedAt:J

    return-void
.end method

.method public setLockAccountGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lockAccountGuid:Ljava/lang/String;

    return-void
.end method

.method public setMdeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeExtra:Ljava/lang/String;

    return-void
.end method

.method public setMdeGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeGroupId:Ljava/lang/String;

    return-void
.end method

.method public setMdeItemId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeItemId:Ljava/lang/String;

    return-void
.end method

.method public setMdeOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeOwnerId:Ljava/lang/String;

    return-void
.end method

.method public setMdeSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeSpaceId:Ljava/lang/String;

    return-void
.end method

.method public setOriginUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->originUuid:Ljava/lang/String;

    return-void
.end method

.method public setPageMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/PageMode;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->pageMode:I

    return-void
.end method

.method public setPendingNotification(Lcom/samsung/android/support/senl/nt/data/common/pendingIntent/PendingNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mPendingNotification:Lcom/samsung/android/support/senl/nt/data/common/pendingIntent/PendingNotification;

    return-void
.end method

.method public setRecommendedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedAt:J

    return-void
.end method

.method public setRecommendedTitle(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedTitle:Ljava/lang/String;

    return-void
.end method

.method public setRecycleBinTimeMoved(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recycleBinTimeMoved:J

    return-void
.end method

.method public setReminderRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderRequestCode:I

    return-void
.end method

.method public setReminderTriggerTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderTriggerTime:J

    return-void
.end method

.method public setRemoveActionLinkData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->removeActionLinkData:Z

    return-void
.end method

.method public setSaveType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->saveType:I

    return-void
.end method

.method public setSecondContentType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    return-void
.end method

.method public setSecondOpenedAt(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondOpenedAt:J

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->size:I

    return-void
.end method

.method public setStrokeRatio(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    return-void
.end method

.method public setStrokeUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeUuid:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateContents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateContents:Z

    return-void
.end method

.method public setUpdateStrokeInWorkerThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeInWorkerThread:Z

    return-void
.end method

.method public setUpdateStrokeSearchData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeSearchData:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVrUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->vrUuid:Ljava/lang/String;

    return-void
.end method

.method public setWidgetId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->widgetId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->id:Ljava/lang/Long;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->uuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDeleted:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isDirty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayContent:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->createdAt:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastModifiedAt:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->vrUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstContentType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondContentType:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->strokeRatio:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->categoryUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isFavorite:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isLock:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSavingByWhichPid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderTriggerTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->reminderRequestCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recycleBinTimeMoved:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->contentSecureVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->displayTitle:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->saveType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstOpendAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->secondOpenedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastOpenedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->importedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeSpaceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeItemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeExtra:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeGroupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->mdeOwnerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->firstHandwritingHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->deleteRecommended:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->absolutePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isImported:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->removeActionLinkData:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeSearchData:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->dirtySkipped:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->widgetId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->keepServerTimestamp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateStrokeInWorkerThread:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->updateContents:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->serverId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->fileExtension:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lastMappedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSynced:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->recommendedTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->backgroundColorInverted:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->lockAccountGuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->corrupted:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->pageMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
