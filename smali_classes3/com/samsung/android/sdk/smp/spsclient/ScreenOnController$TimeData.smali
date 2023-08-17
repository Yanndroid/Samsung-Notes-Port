.class Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeData"
.end annotation


# instance fields
.field private displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field private displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field private doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field private doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field private screenOnEndTime:J


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-wide p5, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->screenOnEndTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;JLcom/samsung/android/sdk/smp/spsclient/ScreenOnController$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->screenOnEndTime:J

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/spsclient/ScreenOnController$TimeData;->doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-object p0
.end method
