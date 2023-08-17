.class final Lcom/google/android/livesharing/zzn;
.super Lcom/google/android/livesharing/LiveSharingMeetingInfo;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;Lcom/google/android/livesharing/zzm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/livesharing/zzn;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/livesharing/zzn;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/livesharing/zzn;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    iget-object v1, p0, Lcom/google/android/livesharing/zzn;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/livesharing/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/livesharing/zzn;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {p1}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/livesharing/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/livesharing/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/livesharing/zzn;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final meetingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/livesharing/zzn;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/livesharing/zzn;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    return-object v0
.end method

.method public final meetingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/livesharing/zzn;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final toBuilder()Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/livesharing/zzl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/livesharing/zzl;-><init>(Lcom/google/android/livesharing/LiveSharingMeetingInfo;Lcom/google/android/livesharing/zzk;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/livesharing/zzn;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/livesharing/zzn;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/livesharing/zzn;->zzc:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LiveSharingMeetingInfo{meetingCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", meetingUrl="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", meetingStatus="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
