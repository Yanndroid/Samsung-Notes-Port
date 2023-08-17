.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

.field public final synthetic zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

.field public final synthetic zzc:Lcom/google/android/gms/internal/meet_coactivities/zzhn;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgj;Lcom/google/android/livesharing/CoWatchingSessionDelegate;Lcom/google/android/gms/internal/meet_coactivities/zzhn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgd;->zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzgj;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgd;->zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzgd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzhn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzgj;->zzf(Lcom/google/android/livesharing/CoWatchingSessionDelegate;Lcom/google/android/gms/internal/meet_coactivities/zzhn;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
