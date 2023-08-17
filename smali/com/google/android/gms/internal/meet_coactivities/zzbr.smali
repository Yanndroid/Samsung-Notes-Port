.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzcn;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzcn;Lcom/google/android/gms/internal/meet_coactivities/zzc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbr;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbr;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbr;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzcn;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbr;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzc;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzk(Lcom/google/android/gms/internal/meet_coactivities/zzcn;Lcom/google/android/gms/internal/meet_coactivities/zzc;)Lcom/google/android/gms/internal/meet_coactivities/zzm;

    move-result-object v0

    return-object v0
.end method
