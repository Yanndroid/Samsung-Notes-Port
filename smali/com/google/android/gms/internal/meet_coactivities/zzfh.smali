.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

.field public final synthetic zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzfo;Lcom/google/android/livesharing/CoWatchingSessionDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfh;->zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfh;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzfh;->zzb:Lcom/google/android/livesharing/CoWatchingSessionDelegate;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzfo;->zzf(Lcom/google/android/livesharing/CoWatchingSessionDelegate;)Lcom/google/android/gms/internal/meet_coactivities/zzeg;

    move-result-object v0

    return-object v0
.end method
