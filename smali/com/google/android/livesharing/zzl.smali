.class final Lcom/google/android/livesharing/zzl;
.super Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/livesharing/LiveSharingMeetingInfo;Lcom/google/android/livesharing/zzk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/livesharing/zzl;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/livesharing/zzl;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/livesharing/zzl;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 5

    iget-object v0, p0, Lcom/google/android/livesharing/zzl;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/livesharing/zzl;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/livesharing/zzl;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/livesharing/zzn;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/livesharing/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;Lcom/google/android/livesharing/zzm;)V

    return-object v3

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/livesharing/zzl;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " meetingCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/livesharing/zzl;->zzb:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " meetingUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/livesharing/zzl;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    if-nez v1, :cond_4

    const-string v1, " meetingStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setMeetingCode(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .locals 1

    const-string v0, "Null meetingCode"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zzl;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final setMeetingStatus(Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .locals 1

    const-string v0, "Null meetingStatus"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zzl;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    return-object p0
.end method

.method public final setMeetingUrl(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .locals 1

    const-string v0, "Null meetingUrl"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/livesharing/zzl;->zzb:Ljava/lang/String;

    return-object p0
.end method
