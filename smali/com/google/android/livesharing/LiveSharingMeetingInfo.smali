.class public abstract Lcom/google/android/livesharing/LiveSharingMeetingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;,
        Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/livesharing/zzl;

    invoke-direct {v0}, Lcom/google/android/livesharing/zzl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract meetingCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract meetingUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract toBuilder()Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
