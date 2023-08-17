.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzdp;

.field public final synthetic zzb:Lcom/google/android/livesharing/CoWatchingState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzdp;Lcom/google/android/livesharing/CoWatchingState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdo;->zzb:Lcom/google/android/livesharing/CoWatchingState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdo;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzdo;->zzb:Lcom/google/android/livesharing/CoWatchingState;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzdp;->zzd(Lcom/google/android/livesharing/CoWatchingState;)V

    return-void
.end method
