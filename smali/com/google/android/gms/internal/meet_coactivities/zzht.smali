.class public final Lcom/google/android/gms/internal/meet_coactivities/zzht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/meet_coactivities/zzia;


# direct methods
.method public static final zzc(Lcom/google/android/gms/internal/meet_coactivities/zzm;)Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 2

    invoke-static {}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->builder()Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingCode(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingUrl(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/meet_coactivities/zzm;->zzd()Lcom/google/android/gms/internal/meet_coactivities/zzad;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/meet_coactivities/zzad;->zza:Lcom/google/android/gms/internal/meet_coactivities/zzad;

    sget-object v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->NOT_CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    sget-object v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED_WITH_LIVE_SHARING:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    :goto_0
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->setMeetingStatus(Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;

    invoke-virtual {v0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;->build()Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
