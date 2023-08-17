.class public abstract Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/livesharing/LiveSharingMeetingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMeetingCode(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMeetingStatus(Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .param p1    # Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setMeetingUrl(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
