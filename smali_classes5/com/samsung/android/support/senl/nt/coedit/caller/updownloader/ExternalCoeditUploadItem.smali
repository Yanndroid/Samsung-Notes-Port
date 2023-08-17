.class public Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mEntry:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

.field private mGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->mEntry:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    return-void
.end method


# virtual methods
.method public getEntry()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->mEntry:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ExternalCoeditUploadItem;->mGroupId:Ljava/lang/String;

    return-void
.end method
