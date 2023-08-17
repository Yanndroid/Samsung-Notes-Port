.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzr;

.field public final synthetic zzc:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzr;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbx;->zzc:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbx;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbx;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbx;->zzc:Ljava/util/Optional;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzm(Lcom/google/android/gms/internal/meet_coactivities/zzr;Ljava/util/Optional;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
