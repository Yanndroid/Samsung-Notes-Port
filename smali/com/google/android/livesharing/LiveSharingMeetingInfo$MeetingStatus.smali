.class public final enum Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/livesharing/LiveSharingMeetingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeetingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum CONNECTED_WITH_LIVE_SHARING:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum NOT_CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    const-string v1, "NOT_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->NOT_CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    new-instance v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    new-instance v3, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    const-string v5, "CONNECTED_WITH_LIVE_SHARING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->CONNECTED_WITH_LIVE_SHARING:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->zza:[Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->zza:[Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    invoke-virtual {v0}, [Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    return-object v0
.end method
