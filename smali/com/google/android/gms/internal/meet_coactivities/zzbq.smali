.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zzcn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzcl;Lcom/google/android/gms/internal/meet_coactivities/zzcn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzcl;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzcn;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzbq;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzcn;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzcl;->zzt(Lcom/google/android/gms/internal/meet_coactivities/zzcn;)Lcom/google/android/gms/internal/meet_coactivities/zzab;

    move-result-object v0

    return-object v0
.end method
