.class public final synthetic Lcom/google/android/gms/internal/meet_coactivities/zzzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/meet_coactivities/zzaaa;

.field public final synthetic zzb:I

.field public final synthetic zzc:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzaaa;ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaaa;

    iput p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzz;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzz;->zzc:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzz;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzaaa;

    iget v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzz;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzzz;->zzc:Landroid/os/Parcel;

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzd(ILandroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzc()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "io.grpc.binder.internal.OneWayBinderProxy$InProcessImpl"

    const-string v3, "lambda$transact$0"

    const-string v4, "A oneway transaction was not understood - ignoring"

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaad;->zzc()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "io.grpc.binder.internal.OneWayBinderProxy$InProcessImpl"

    const-string v4, "lambda$transact$0"

    const-string v5, "A oneway transaction threw - ignoring"

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
