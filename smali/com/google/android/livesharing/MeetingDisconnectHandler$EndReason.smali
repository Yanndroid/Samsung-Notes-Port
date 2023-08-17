.class public final enum Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/livesharing/annotations/PublicApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/livesharing/MeetingDisconnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SESSION_ENDED_BY_USER:Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum SESSION_ENDED_UNEXPECTEDLY:Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    const-string v1, "SESSION_ENDED_BY_USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->SESSION_ENDED_BY_USER:Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    new-instance v1, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    const-string v3, "SESSION_ENDED_UNEXPECTEDLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->SESSION_ENDED_UNEXPECTEDLY:Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->zza:[Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    return-object p0
.end method

.method public static values()[Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->zza:[Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    invoke-virtual {v0}, [Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;

    return-object v0
.end method
