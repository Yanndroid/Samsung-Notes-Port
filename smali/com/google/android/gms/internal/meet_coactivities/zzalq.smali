.class final Lcom/google/android/gms/internal/meet_coactivities/zzalq;
.super Lcom/google/android/gms/internal/meet_coactivities/zzalp;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

.field private final zzb:Z

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zztn;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzalp;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzb:Z

    return-void
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/meet_coactivities/zzalq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzb:Z

    return p0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzb()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzd:Z

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    const-string v1, "Cancelled by client with StreamObserver.onError()"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzc:Z

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzc:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream was terminated by error, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzd:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Stream is already completed, no further calls are allowed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzd(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(I)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zzb:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/meet_coactivities/zztn;->zzc(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzalq;->zza:Lcom/google/android/gms/internal/meet_coactivities/zztn;

    const/4 v0, 0x1

    goto :goto_0
.end method
