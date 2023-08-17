.class public Lcom/google/android/gms/internal/meet_coactivities/zzaln;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zztj;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzti;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zztj;Lcom/google/android/gms/internal/meet_coactivities/zzti;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zztj;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    const-string p1, "callOptions"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzti;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/meet_coactivities/zzti;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/meet_coactivities/zztj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzaln;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztj;

    return-object v0
.end method
