.class public Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption$SyncType;
    }
.end annotation


# instance fields
.field private isPermissionUINeeded:Z

.field private isSyncWithQuota:Z

.field private syncType:Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption$SyncType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption$SyncType;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;->syncType:Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption$SyncType;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;->isPermissionUINeeded:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;->isSyncWithQuota:Z

    return-void
.end method


# virtual methods
.method public getSyncType()Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption$SyncType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;->syncType:Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption$SyncType;

    return-object v0
.end method

.method public isPermissionUINeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;->isPermissionUINeeded:Z

    return v0
.end method

.method public isSyncWithQuota()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SyncOption;->isSyncWithQuota:Z

    return v0
.end method
