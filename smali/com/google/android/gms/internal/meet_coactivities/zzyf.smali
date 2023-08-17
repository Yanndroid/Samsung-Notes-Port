.class public final Lcom/google/android/gms/internal/meet_coactivities/zzyf;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

.field private final zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzyd;Lcom/google/android/gms/internal/meet_coactivities/zzwu;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/meet_coactivities/zzwu;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzg(Lcom/google/android/gms/internal/meet_coactivities/zzyd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzyd;->zzi()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    iput-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzwu;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;->zzc:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzyf;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;->zzc:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza()Lcom/google/android/gms/internal/meet_coactivities/zzyd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzyf;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzyd;

    return-object v0
.end method
