.class final Lcom/google/android/gms/internal/drive/zzjk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private final zznx:Lcom/google/android/gms/internal/drive/zzjr;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjk;->buffer:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->zzb([B)Lcom/google/android/gms/internal/drive/zzjr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjk;->zznx:Lcom/google/android/gms/internal/drive/zzjr;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/android/gms/internal/drive/zzjd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzjk;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzbx()Lcom/google/android/gms/internal/drive/zzjc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjk;->zznx:Lcom/google/android/gms/internal/drive/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzjr;->zzcb()V

    new-instance v0, Lcom/google/android/gms/internal/drive/zzjm;

    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjk;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzjm;-><init>([B)V

    return-object v0
.end method

.method public final zzby()Lcom/google/android/gms/internal/drive/zzjr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjk;->zznx:Lcom/google/android/gms/internal/drive/zzjr;

    return-object v0
.end method
