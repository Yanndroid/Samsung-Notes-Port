.class public Lcom/google/android/gms/drive/CreateFileActivityBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_RESPONSE_DRIVE_ID:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private final zzn:Lcom/google/android/gms/internal/drive/zzt;

.field private zzo:Lcom/google/android/gms/drive/DriveContents;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzt;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzt;->build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;

    move-result-object p1

    return-object p1
.end method

.method public final getRequestId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzt;->getRequestId()I

    move-result v0

    return v0
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzt;->zza(Lcom/google/android/gms/drive/DriveId;)V

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzt;->zzc(Ljava/lang/String;)V

    return-object p0
.end method

.method public setInitialDriveContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 3
    .param p1    # Lcom/google/android/gms/drive/DriveContents;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/google/android/gms/internal/drive/zzbi;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzk()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-interface {p1}, Lcom/google/android/gms/drive/DriveContents;->zzi()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/drive/Contents;->zzj:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/drive/zzt;->zzd(I)V

    iput-object p1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzo:Lcom/google/android/gms/drive/DriveContents;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DriveContents are already closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only DriveContents obtained from the Drive API are accepted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zzt;->zzd(I)V

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzp:Z

    return-object p0
.end method

.method public setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/drive/zzt;->zza(Lcom/google/android/gms/drive/MetadataChangeSet;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzt;->zzc()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzt;->zzd()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzt;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzp:Z

    const-string v1, "Must call setInitialDriveContents."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzo:Lcom/google/android/gms/drive/DriveContents;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/drive/DriveContents;->zzj()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzn:Lcom/google/android/gms/internal/drive/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzt;->zzg()V

    return-void
.end method
