.class final Lcom/google/android/gms/internal/meet_coactivities/zziu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzit;

.field public final synthetic zzb:Lcom/google/android/gms/internal/meet_coactivities/zziv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zziv;Lcom/google/android/gms/internal/meet_coactivities/zzit;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zziu;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zziv;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zziu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zziu;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zziv;

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zziv;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zziv;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zziu;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzit;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
