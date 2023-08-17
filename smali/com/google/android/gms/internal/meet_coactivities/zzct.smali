.class final Lcom/google/android/gms/internal/meet_coactivities/zzct;
.super Lcom/google/android/gms/internal/meet_coactivities/zzfp;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

.field private zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzfp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;
    .locals 1

    const-string v0, "Null activityName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/meet_coactivities/zzbo;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;
    .locals 1

    const-string v0, "Null ipcManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;
    .locals 1

    const-string v0, "Null meetingDisconnectHandler"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/meet_coactivities/zzr;)Lcom/google/android/gms/internal/meet_coactivities/zzfp;
    .locals 1

    const-string v0, "Null startInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/meet_coactivities/zzfq;
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzb:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/meet_coactivities/zzcv;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/meet_coactivities/zzcv;-><init>(Lcom/google/android/gms/internal/meet_coactivities/zzbo;Ljava/lang/String;Lcom/google/android/gms/internal/meet_coactivities/zzr;Lcom/google/android/livesharing/MeetingDisconnectHandler;Lcom/google/android/gms/internal/meet_coactivities/zzcu;)V

    return-object v6

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzbo;

    if-nez v1, :cond_2

    const-string v1, " ipcManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzb:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " activityName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzr;

    if-nez v1, :cond_4

    const-string v1, " startInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzct;->zzd:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    if-nez v1, :cond_5

    const-string v1, " meetingDisconnectHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
