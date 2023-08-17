.class public Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DISPLAY_NAME_COLOR:I = -0x1

.field public static final DEFAULT_REORDER:I = 0xf423f


# instance fields
.field public categoryUuid:Ljava/lang/String;

.field public createdTime:J

.field public deleted:Z

.field public displayNameColor:I

.field public isDeleted:I

.field public isSyncWithMS:I

.field public lastModifiedTime:J

.field public name:Ljava/lang/String;

.field public parentFolderNodeId:Ljava/lang/String;

.field public recyclerBinMovedTime:J

.field public reorder:I

.field public restorePath:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public syncModifiedTime:J

.field public type:Ljava/lang/String;

.field public uUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    const v0, 0xf423f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    return-void
.end method
