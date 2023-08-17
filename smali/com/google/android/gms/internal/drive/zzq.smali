.class public Lcom/google/android/gms/internal/drive/zzq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzba:Ljava/lang/String;

.field public final zzbd:Lcom/google/android/gms/drive/DriveId;

.field public final zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field public final zzdk:Ljava/lang/Integer;

.field public final zzdl:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzq;->zzde:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzq;->zzdk:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzq;->zzba:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzq;->zzbd:Lcom/google/android/gms/drive/DriveId;

    iput p5, p0, Lcom/google/android/gms/internal/drive/zzq;->zzdl:I

    return-void
.end method
