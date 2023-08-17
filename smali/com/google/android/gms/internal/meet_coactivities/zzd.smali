.class public final Lcom/google/android/gms/internal/meet_coactivities/zzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field private static volatile zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field private static volatile zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field private static volatile zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

.field private static volatile zze:Lcom/google/android/gms/internal/meet_coactivities/zzxa;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/meet_coactivities/zztj;)Lcom/google/android/gms/internal/meet_coactivities/zzc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/meet_coactivities/zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/meet_coactivities/zza;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzti;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzti;

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/meet_coactivities/zzall;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzalm;Lcom/google/android/gms/internal/meet_coactivities/zztj;Lcom/google/android/gms/internal/meet_coactivities/zzti;)Lcom/google/android/gms/internal/meet_coactivities/zzaln;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/meet_coactivities/zzc;

    return-object p0
.end method

.method public static zzb()Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzwy;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const-string v2, "com.google.android.libraries.communications.sdk.sync.api.proto.MeetActivityService"

    const-string v3, "BroadcastStatSample"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzd(Z)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzav;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzav;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzax;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzax;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zze:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzwy;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const-string v2, "com.google.android.libraries.communications.sdk.sync.api.proto.MeetActivityService"

    const-string v3, "BroadcastStateUpdate"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzd(Z)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzaz;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzaz;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzbb;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzbb;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zzd:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzwy;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const-string v2, "com.google.android.libraries.communications.sdk.sync.api.proto.MeetActivityService"

    const-string v3, "ConnectMeetingAsStream"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzd(Z)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzt;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzt;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzv;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzwy;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const-string v2, "com.google.android.libraries.communications.sdk.sync.api.proto.MeetActivityService"

    const-string v3, "ConnectMeeting"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzd(Z)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzt;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzt;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzv;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzv;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/meet_coactivities/zzd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzwx;Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/meet_coactivities/zzwy;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzwy;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zze(Lcom/google/android/gms/internal/meet_coactivities/zzwy;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const-string v2, "com.google.android.libraries.communications.sdk.sync.api.proto.MeetActivityService"

    const-string v3, "DisconnectMeeting"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzxa;->zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzd(Z)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzz;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzz;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzb(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzab;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzab;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/meet_coactivities/zzalk;->zza(Lcom/google/android/gms/internal/meet_coactivities/zzrc;)Lcom/google/android/gms/internal/meet_coactivities/zzwx;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzc(Lcom/google/android/gms/internal/meet_coactivities/zzwx;)Lcom/google/android/gms/internal/meet_coactivities/zzww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzww;->zzf()Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzd;->zzc:Lcom/google/android/gms/internal/meet_coactivities/zzxa;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
