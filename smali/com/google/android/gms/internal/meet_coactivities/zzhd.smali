.class final Lcom/google/android/gms/internal/meet_coactivities/zzhd;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/meet_coactivities/zzgo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/livesharing/internal/sessiondetection/SessionDetectionResponseReceiver"

    invoke-static {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzih;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzhd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/meet_coactivities/zzgo;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzgo;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "parseResponse"

    const-string v2, "com/google/android/livesharing/internal/sessiondetection/SessionDetectionResponseReceiver"

    const-string v3, "SessionDetectionResponseReceiver.java"

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzhd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zzc()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 p2, 0x78

    invoke-interface {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p2, "Result Extras was null"

    :goto_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzo(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->NOT_CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzhb;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzhb;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/meet_coactivities/zzhc;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzhc;

    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzhd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 p2, 0x80

    invoke-interface {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p2, "Received response from Meet but proto was empty"

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-static {}, Lcom/google/android/gms/internal/meet_coactivities/zzpg;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzpg;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/meet_coactivities/zzat;->zzd([BLcom/google/android/gms/internal/meet_coactivities/zzpg;)Lcom/google/android/gms/internal/meet_coactivities/zzat;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/meet_coactivities/zzqe; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzat;->zzb()Lcom/google/android/gms/internal/meet_coactivities/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzas;->zzc()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/meet_coactivities/zzhd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    const/16 p2, 0x93

    invoke-interface {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p2, "Invalid state proto detected"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzat;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zze()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzat;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzd()Z

    move-result p1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzat;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/meet_coactivities/zzam;->zzc()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    xor-int/2addr p1, v2

    :goto_2
    if-nez p1, :cond_5

    :goto_3
    sget-object p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzat;->zza()Lcom/google/android/gms/internal/meet_coactivities/zzaq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/meet_coactivities/zzaq;->zzf()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED_WITH_LIVE_SHARING:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/google/android/gms/internal/meet_coactivities/zzhd;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzih;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/meet_coactivities/zzib;->zze()Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const/16 p2, 0x8d

    invoke-interface {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/meet_coactivities/zzjb;->zzh(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/meet_coactivities/zzjb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/meet_coactivities/zzid;

    const-string p2, "Error parsing bytes and converting to proto"

    goto/16 :goto_0

    :goto_4
    iget-object p2, p0, Lcom/google/android/gms/internal/meet_coactivities/zzhd;->zzb:Lcom/google/android/gms/internal/meet_coactivities/zzgo;

    invoke-static {}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->builder()Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingCode(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingUrl(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingStatus(Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {v0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->build()Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object p1

    check-cast p2, Lcom/google/android/gms/internal/meet_coactivities/zzgt;

    iget-object p2, p2, Lcom/google/android/gms/internal/meet_coactivities/zzgt;->zza:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {p2, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method
