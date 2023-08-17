.class public final Lcom/google/android/gms/internal/drive/zzaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;


# instance fields
.field private final zzdy:Lcom/google/android/gms/common/api/Status;

.field private final zzdz:Lcom/google/android/gms/drive/MetadataBuffer;

.field private final zzea:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzaq;->zzdy:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzaq;->zzdz:Lcom/google/android/gms/drive/MetadataBuffer;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/drive/zzaq;->zzea:Z

    return-void
.end method


# virtual methods
.method public final getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaq;->zzdz:Lcom/google/android/gms/drive/MetadataBuffer;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaq;->zzdy:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzaq;->zzdz:Lcom/google/android/gms/drive/MetadataBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataBuffer;->release()V

    :cond_0
    return-void
.end method
