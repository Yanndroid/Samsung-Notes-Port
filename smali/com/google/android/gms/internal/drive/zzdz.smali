.class final Lcom/google/android/gms/internal/drive/zzdz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/drive/DriveResource$MetadataResult;


# instance fields
.field private final zzdy:Lcom/google/android/gms/common/api/Status;

.field private final zzgr:Lcom/google/android/gms/drive/Metadata;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzdy:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzgr:Lcom/google/android/gms/drive/Metadata;

    return-void
.end method


# virtual methods
.method public final getMetadata()Lcom/google/android/gms/drive/Metadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzgr:Lcom/google/android/gms/drive/Metadata;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdz;->zzdy:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
