.class public Lcom/samsung/android/sdk/smp/marketing/Marketing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/display/DisplayMeta;


# static fields
.field private static final CANCEL_DELAY_TIME_DIVIDER:[I

.field private static final CANCEL_RETRY_DELAY_TIME_MAX:J

.field private static final CANCEL_RETRY_DELAY_TIME_MIN:[J

.field private static final TAG:Ljava/lang/String; = "Marketing"


# instance fields
.field private mCctimeMinutes:I

.field private mChannelType:I

.field private mClearTimeMillis:J

.field private mContentsUrl:Lorg/json/JSONObject;

.field private final mDisplayId:I

.field private mDisplayTimeHourEnd:I

.field private mDisplayTimeHourStart:I

.field private mDisplayTimeMinEnd:I

.field private mDisplayTimeMinStart:I

.field private mDoNotDisturbTimeHourEnd:I

.field private mDoNotDisturbTimeHourStart:I

.field private mDoNotDisturbTimeMinEnd:I

.field private mDoNotDisturbTimeMinStart:I

.field private mExpectedDisplayTimeMillis:J

.field private mFeedbackDispersionMax:I

.field private mFeedbackDispersionMin:I

.field private mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

.field private mFreqCapping_Day:I

.field private mFreqCapping_DayLimit:I

.field private mFreqCapping_Hour:I

.field private mFreqCapping_HourLimit:I

.field private mIsResourceParsed:Z

.field private final mMarketingType:Ljava/lang/String;

.field private final mMid:Ljava/lang/String;

.field private final mMsgType:Ljava/lang/String;

.field private mPLink:Z

.field private mRandomMinutes:I

.field private mScreenOnTimeMinutes:I

.field private mStyle:Lorg/json/JSONObject;

.field private mTimeBase:Ljava/lang/String;

.field private mTtlEndMillis:J

.field private mTtlStartMillis:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_DELAY_TIME_DIVIDER:[I

    sget-wide v1, Lcom/samsung/android/sdk/smp/common/constants/Constants;->HOURMILLIS:J

    sput-wide v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_RETRY_DELAY_TIME_MAX:J

    new-array v0, v0, [J

    sget-wide v1, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    const-wide/16 v3, 0x5

    mul-long/2addr v3, v1

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    const-wide/16 v3, 0xa

    mul-long/2addr v3, v1

    const/4 v5, 0x1

    aput-wide v3, v0, v5

    const-wide/16 v3, 0xf

    mul-long/2addr v1, v3

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_RETRY_DELAY_TIME_MIN:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMsgType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMarketingType:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayId:I

    return-void
.end method

.method private adjustDisplayTimeRange()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDoNotDisturbTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDoNotDisturbTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayTime in local : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "), doNotDisturbTime : ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isDoNotDisturbTimeOff()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    new-instance v3, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNotDisturbTime is off. display range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v1, v2, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isDoNotDisturbEndInBetweenDisplayTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {v6, v1, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v2, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isDoNotDisturbEndInBetweenDisplayTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v1, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v3, v4, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;-><init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updated display range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const-string v3, ""

    goto/16 :goto_0

    :cond_6
    const-string v0, "display not available after applying doNotDisturbTime"

    invoke-static {v5, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException;-><init>()V

    throw v0
.end method

.method private applyRandomTimeForDisplay(Ljava/util/Calendar;IIJI)V
    .locals 8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p4, v0

    sget-wide v0, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    const-wide/16 v2, 0x1e

    mul-long v4, v0, v2

    cmp-long v4, p4, v4

    if-lez v4, :cond_3

    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr p2, v4

    int-to-long v4, p2

    sget-wide v6, Lcom/samsung/android/sdk/smp/common/constants/Constants;->HOURMILLIS:J

    mul-long/2addr v4, v6

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p3, p2

    int-to-long p2, p3

    mul-long/2addr p2, v0

    add-long/2addr v4, p2

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long p2, p2

    sub-long/2addr v4, p2

    const-wide/16 p2, 0x0

    cmp-long v6, v4, p2

    if-gez v6, :cond_0

    sget-wide v6, Lcom/samsung/android/sdk/smp/common/constants/Constants;->DAYMILLIS:J

    add-long/2addr v4, v6

    :cond_0
    int-to-long v6, p6

    mul-long/2addr v6, v0

    cmp-long p6, v6, v4

    if-lez p6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v6

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    mul-long v6, v0, v2

    sub-long v6, p4, v6

    cmp-long p6, v4, v6

    if-lez p6, :cond_2

    mul-long/2addr v2, v0

    sub-long v4, p4, v2

    :cond_2
    invoke-static {p2, p3, v4, v5}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->getRandomMillis(JJ)J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    add-long/2addr p4, p2

    invoke-virtual {p1, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object p4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "random display(s):"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->SECMILLIS:J

    div-long v2, p2, v2

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p6, ", display(m):"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p2, v0

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", range(m) : [0,"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v4, v0

    invoke-virtual {p5, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string p3, "do not random display. less than 30 min left until ttlEnd"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private calculateDisplayTimeForOneRange(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Ljava/util/Calendar;)J
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlStartMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlEndMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getRandomMinutes()I

    move-result v8

    const/16 v2, 0xb

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {p2, p3, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;II)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p2

    const/4 v3, 0x0

    invoke-static {p4, v2, p2, v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->setTime(Ljava/util/Calendar;III)V

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-ltz p2, :cond_0

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    :cond_0
    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->DAYMILLIS:J

    add-long/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->needRandomDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result v5

    move-object v2, p0

    move-object v3, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->applyRandomTimeForDisplay(Ljava/util/Calendar;IIJI)V

    :cond_2
    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    return-wide p1
.end method

.method private calculateDisplayTimeForTwoRanges(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;Ljava/util/Calendar;)J
    .locals 7

    const/16 v0, 0xb

    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->canIgnoreRange1(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can ignore range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". calculate display time with range "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getStartTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->calculateDisplayTimeForOneRange(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Ljava/util/Calendar;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getStartTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->getTimeDiffMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I

    move-result v0

    int-to-long v1, v0

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    mul-long/2addr v1, v3

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p4, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getStartTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->shiftTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shift "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getStartTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". shifted:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(m)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->calculateDisplayTimeForOneRange(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Ljava/util/Calendar;)J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getStartTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p2

    invoke-static {p1, p2, v5, v6}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "calculated display time is not in display time range. shift time back"

    invoke-static {v4, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v5, v1

    :cond_1
    return-wide v5
.end method

.method private static canChangeStateToFail(Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private canIgnoreRange1(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;II)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;II)Z

    move-result p1

    return p1
.end method

.method private checkDisplayTime(Landroid/content/Context;Z)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isOverTtl(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getExpectedDisplayTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isValidDisplayTimeRange(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not valid display time range. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "~"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->updateExpectedDisplayTime(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$DisplayErrorDueToDoNotDisturbTimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isOverTtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForDisplay(Landroid/content/Context;)V

    return v1

    :cond_4
    return v3

    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "fail_due_to_do_not_disturb_time"

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return v1

    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "dberror"

    goto :goto_0
.end method

.method private checkFilterInstall(Landroid/content/Context;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getInstallPkg()Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getInstallCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string v0, "installArray is null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFilterInstall exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method private checkFilterNotInstall(Landroid/content/Context;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getNotInstallPkg()Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;->getNotInstallCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string v0, "notInstallArray is null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFilterNotInstall exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method private checkFilterPkg(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string v0, "mFilter is null"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkFilterInstall(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->INSTALL_CHECK_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_0
    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkFilterNotInstall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->NOT_INSTALL_CHECK_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_0

    :cond_2
    return v1
.end method

.method private checkFrequencyCapping(Landroid/content/Context;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isTestMsg()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isFreqCappingOff()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_Day:I

    int-to-long v1, v1

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/Constants;->DAYMILLIS:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->countMarketingsDisplayedIn(J)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_DayLimit:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v5, "over frequency capping rule(day)"

    invoke-static {v1, v2, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return v3

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_Hour:I

    int-to-long v1, v1

    sget-wide v5, Lcom/samsung/android/sdk/smp/common/constants/Constants;->HOURMILLIS:J

    mul-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->countMarketingsDisplayedIn(J)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_HourLimit:I

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v5, "over frequency capping rule(hour)"

    invoke-static {v1, v2, v5}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkOptIn(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMsgType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "marketing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getOptIn()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v3, "fail to display. currently opt out."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static getMarketingByMarketingType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 0

    const-string p0, "1"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    const-string p0, "2"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid marketingtype : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
.end method

.method private getMarketingStatusAlarmTime()J
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mExpectedDisplayTimeMillis:J

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mCctimeMinutes:I

    int-to-long v2, v2

    sget-wide v4, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getMarketingStatusRetryDelayTime(I)J
    .locals 6

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mCctimeMinutes:I

    int-to-long v0, v0

    sget-wide v2, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    mul-long/2addr v0, v2

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_DELAY_TIME_DIVIDER:[I

    aget p1, p1, v3

    int-to-long v4, p1

    div-long/2addr v0, v4

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_RETRY_DELAY_TIME_MIN:[J

    aget-wide v4, p1, v3

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    aget-wide v0, p1, v3

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_DELAY_TIME_DIVIDER:[I

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_RETRY_DELAY_TIME_MIN:[J

    aget-wide v3, p1, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    aget-wide v0, p1, v2

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_DELAY_TIME_DIVIDER:[I

    const/4 v2, 0x0

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_RETRY_DELAY_TIME_MIN:[J

    aget-wide v3, p1, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    aget-wide v0, p1, v2

    :cond_2
    :goto_0
    sget-wide v2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->CANCEL_RETRY_DELAY_TIME_MAX:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    move-wide v0, v2

    :cond_3
    return-wide v0
.end method

.method private getScreenOnAlarmTime()J
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mExpectedDisplayTimeMillis:J

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mScreenOnTimeMinutes:I

    int-to-long v2, v2

    sget-wide v4, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isDoNotDisturbEndInBetweenDisplayTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->equals(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDoNotDisturbTimeOff()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDoNotDisturbTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFreqCappingOff()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_Day:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_DayLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_Hour:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_HourLimit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLocalTimeBase()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTimeBase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOverTtl(Landroid/content/Context;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlEndMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getExpectedDisplayTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", until:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v1, "over display time"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isDataSaverMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_1

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public static isTestMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isValidDisplayTimeRange(J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDoNotDisturbTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDoNotDisturbTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v3

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z

    move-result p1

    return p1
.end method

.method private needRandomDisplay(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isTestMsg()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string/jumbo v2, "skip random display : test message"

    :goto_0
    invoke-static {p1, v0, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/common/sharedvariable/SharedMemoryVariableManager;->isRunningRealtimeMidInFcmService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string/jumbo v2, "skip random display : real time marketing"

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private needToCallGetMarketingStatusApi()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isTestMsg()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mCctimeMinutes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onGetMarketingStatusFail(Landroid/content/Context;I)V
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isDataSaverMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingFailCount(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3ea

    if-eq p2, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z

    :cond_3
    const/16 v2, 0x190

    const/4 v3, 0x0

    if-gt v2, p2, :cond_4

    const/16 v2, 0x1f4

    if-ge p2, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->GET_MARKETING_STATUS_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForDisplay(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C1009_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getNetworkConnectionValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->GET_MARKETING_STATUS_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMarketingStatusRetryDelayTime(I)J

    move-result-wide v1

    add-long/2addr v4, v1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v2, "get_marketing_status"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v6}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p1, v1, v4, v5, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p1
.end method

.method private onGetMarketingStatusSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/16 v0, 0x3f7

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->onGetMarketingStatusFail(Landroid/content/Context;I)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "status"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v2, "sts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "tip"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-eq p2, v4, :cond_3

    const/16 v4, 0x190

    if-eq p2, v4, :cond_2

    const/16 v4, 0x12c

    if-eq p2, v4, :cond_3

    const/16 v1, 0x12d

    if-eq p2, v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->onGetMarketingStatusFail(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p2, v0, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToCanceled(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    int-to-long v0, v1

    sget-wide v8, Lcom/samsung/android/sdk/smp/common/constants/Constants;->SECMILLIS:J

    mul-long/2addr v0, v8

    cmp-long v0, v6, v0

    if-gtz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlEndMillis()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForDisplay(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->USER_CHANGE_DATE_AND_TIME_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v0, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception p2

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get marketing status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->onGetMarketingStatusFail(Landroid/content/Context;I)V

    return-void
.end method

.method private onResourceDownloadFail(Landroid/content/Context;I)V
    .locals 5

    const/16 v0, 0x190

    if-gt v0, p2, :cond_0

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isPowerSaveMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isDataSaverMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DATA_SAVER_MODE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v0, 0x3ec

    if-eq p2, v0, :cond_5

    const/16 v0, 0x3f0

    if-eq p2, v0, :cond_5

    const/16 v0, 0x3f3

    if-eq p2, v0, :cond_5

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingFailCount(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C1009_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getNetworkConnectionValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_4
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "marketing_sub_action"

    const-string v1, "download_res"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants;->REQUEST_RESOURCE_DELAY_MILLIS:J

    add-long/2addr v1, v3

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, v2, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method private onResourceDownloadSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingFailCount(Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DOWNLOADED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->parseResource(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForScreenOnListener(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForGetMarketingStatus(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method private parseResource(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseResource(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$LocaleNotMatchException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidReferrerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to parse resource."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v3, "fail to parse resource. invalid referrer"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->REFERRER_VALIDATION_FAIL:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_2
    move-exception v0

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to parse resource. file not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string/jumbo v1, "txt_file_not_found"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v2, "fail to parse resource. IOException"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "file_io_error"

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v3, "fail to parse resource"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_4
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v3, "fail to parse resource. invalid data"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_5
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v3, "fail to parse resource. not supported type"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_2

    :catch_6
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v3, "fail to parse resource. no matched locale"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method private setExpectedDisplayTime(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setExpectedDisplayTimeMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingExpectedDisplayTime(Ljava/lang/String;J)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_0
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string/jumbo v0, "updateExpectedDisplayTime. update fail"

    invoke-static {p2, p3, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p2}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p2

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string/jumbo p3, "updateExpectedDisplayTime. db open fail"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p1
.end method

.method private setToCanceled(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v1, "db open fail"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->MARKETING_CANCELED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getResDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->deleteFiles(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    :cond_1
    return-void
.end method

.method public static setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string p2, "db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->isMarketingExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->canChangeStateToFail(Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to change to [fail] - current state : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_2
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->FAILED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getResDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->deleteFiles(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static setToGone(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string p2, "Fail to change to [gone] - db open fail"

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->GONE:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_2
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string p2, "Fail to change to [gone] - not displayed/incomp_api"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingClickedTime(Ljava/lang/String;J)Z

    :cond_4
    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getResDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->deleteFiles(Ljava/lang/String;)Z

    new-instance p2, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CLEAR:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->cancelDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    new-instance p2, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CHECK_NOTIFICATION_CLEARED:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p2, v1, v2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->cancelDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    throw p0

    :cond_5
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string p2, "Fail to change to [gone] - invalid params"

    goto :goto_0
.end method


# virtual methods
.method public checkNotificationSettingOption(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getNotiChannelId(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->isNotiSettingOptionDisabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot show notification : disabled notification option"

    invoke-static {p2, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->DISABLE_NOTI_OPTION:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot show notification : channel not created"

    invoke-static {p2, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return v0
.end method

.method public clearDisplayedMarketing(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string v0, "fail to clear. db open fail"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMarketingType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getDisplayManager(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/display/DisplayManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->clear(Landroid/content/Context;I)Z

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToGone(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    return-void
.end method

.method public displayMarketing(Landroid/content/Context;Z)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMarketingType:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getDisplayManager(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v1, "fail to display. displaymanager null"

    invoke-static {p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isResourceParsed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->parseResource(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayMeta()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getClearTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5, p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;JZ)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->display(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;)V

    :cond_3
    return-void
.end method

.method public filterBeforeDisplay(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkOptIn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkFrequencyCapping(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkDisplayTime(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkFilterPkg(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public filterBeforeGetMarketingStatus(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkOptIn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkDisplayTime(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public filterBeforeResourceDownload(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkOptIn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->checkDisplayTime(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public forceDisplay(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v2, "force display"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setExpectedDisplayTime(Landroid/content/Context;J)V

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->getMarketingState(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->requestGetMarketingStatus(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->displayMarketing(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceDisplay. state not supported : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v1, "forceDisplay. db open fail"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$DBException;-><init>()V

    throw p1
.end method

.method public getCctimeMinutes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mCctimeMinutes:I

    return v0
.end method

.method public getChannelType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mChannelType:I

    return v0
.end method

.method public getClearTimeMillis()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isLocalTimeBase()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mClearTimeMillis:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustLocalTimeToUtc0(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mClearTimeMillis:J

    :goto_0
    return-wide v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayId:I

    return v0
.end method

.method public getDisplayMeta()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayId()I

    move-result v1

    const-string v2, "displayid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getChannelType()I

    move-result v1

    const-string v2, "channel_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isPLink()Z

    move-result v1

    const-string v2, "p_link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getDisplayTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isLocalTimeBase()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeHourEnd:I

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeMinEnd:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeHourEnd:I

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeMinEnd:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustUtc0ToLocalTime(II)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDisplayTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isLocalTimeBase()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeHourStart:I

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeMinStart:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeHourStart:I

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeMinStart:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustUtc0ToLocalTime(II)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDoNotDisturbTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeHourEnd:I

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeMinEnd:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    return-object v0
.end method

.method public getDoNotDisturbTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeHourStart:I

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeMinStart:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    return-object v0
.end method

.method public getExpectedDisplayTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mExpectedDisplayTimeMillis:J

    return-wide v0
.end method

.method public getFeedbackDispersionMax()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFeedbackDispersionMax:I

    return v0
.end method

.method public getFeedbackDispersionMin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFeedbackDispersionMin:I

    return v0
.end method

.method public getFilter()Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    return-object v0
.end method

.method public getMarketingType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMarketingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMsgType:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomMinutes()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mRandomMinutes:I

    return v0
.end method

.method public getStyle()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mStyle:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTimeBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlEndMillis()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isLocalTimeBase()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTtlEndMillis:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustLocalTimeToUtc0(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTtlEndMillis:J

    :goto_0
    return-wide v0
.end method

.method public getTtlStartMillis()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isLocalTimeBase()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTtlStartMillis:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustLocalTimeToUtc0(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTtlStartMillis:J

    :goto_0
    return-wide v0
.end method

.method public isPLink()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mPLink:Z

    return v0
.end method

.method public isResourceParsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mIsResourceParsed:Z

    return v0
.end method

.method public isSupportType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMsgType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "passive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMsgType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMsgType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "marketing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTestMsg()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMsgType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->isTestMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestDownloadResource(Landroid/content/Context;)V
    .locals 6

    const-string v0, "contents_url_not_found"

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeResourceDownload(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mContentsUrl:Lorg/json/JSONObject;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->parseResourceUrl(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v3, "fail to request resource. contents url not found"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/samsung/android/sdk/smp/common/util/FilePathUtil;->getResDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x3c

    invoke-static {p1, v2, v3, v0, v4}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager;->downloadResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/common/network/NetworkResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0, v3, v0}, Lcom/samsung/android/sdk/smp/common/util/FileIOUtil;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->onResourceDownloadSuccess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x3ef

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->onResourceDownloadFail(Landroid/content/Context;I)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to request resource. invalid contents url. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public requestGetMarketingStatus(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->filterBeforeGetMarketingStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->getInstance()Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/smp/common/preference/InitOptionsHolder;->isUserBasedOptIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getUID()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v2, "fail to get marketing status. appid null"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "appid_error"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Lcom/samsung/android/sdk/smp/marketing/GetMarketingStatusRequest;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/GetMarketingStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3c

    invoke-static {p1, v2, v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/network/NetworkRequest;I)Lcom/samsung/android/sdk/smp/common/network/NetworkResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->onGetMarketingStatusSuccess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/network/NetworkResult;->getResponseCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->onGetMarketingStatusFail(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAlarmForDisplay(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v2, "display"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_first_display"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mExpectedDisplayTimeMillis:J

    const/4 v0, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void
.end method

.method public setAlarmForGetMarketingStatus(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->needToCallGetMarketingStatusApi()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "marketing_sub_action"

    const-string v2, "get_marketing_status"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getMarketingStatusAlarmTime()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip get status"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/database/DBHandler;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    const-string v1, "db open fail"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->updateMarketingState(Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/MarketingState;)Z

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/database/DBHandler;->close()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setAlarmForDisplay(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public setAlarmForScreenOnListener(Landroid/content/Context;)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mScreenOnTimeMinutes:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getExpectedDisplayTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    const-string v0, "already display time. skip screen on listening"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDisplayTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDoNotDisturbTimeStart()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getDoNotDisturbTimeEnd()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "marketing_sub_action"

    const-string v6, "listening_start"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v5

    const-string v6, "display_start_hour"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result v0

    const-string v5, "display_start_min"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    const-string v5, "display_end_hour"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result v0

    const-string v1, "display_end_min"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    const-string v1, "do_not_disturb_start_hour"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result v0

    const-string v1, "do_not_disturb_start_min"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    const-string v1, "do_not_disturb_end_hour"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result v0

    const-string v1, "do_not_disturb_end_min"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getExpectedDisplayTimeMillis()J

    move-result-wide v0

    const-string v2, "screen_on_end_time"

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->SCREEN_ON:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getScreenOnAlarmTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->setDispatchAlarm(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;JI)V

    return-void
.end method

.method public setCctimeMinutes(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mCctimeMinutes:I

    return-void
.end method

.method public setChannelType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mChannelType:I

    return-void
.end method

.method public setClearTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mClearTimeMillis:J

    return-void
.end method

.method public setContentsUrl(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mContentsUrl:Lorg/json/JSONObject;

    return-void
.end method

.method public setDisplayTimeEnd(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeHourEnd:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeMinEnd:I

    return-void
.end method

.method public setDisplayTimeStart(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeHourStart:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDisplayTimeMinStart:I

    return-void
.end method

.method public setDoNotDisturbTimeEnd(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeHourEnd:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeMinEnd:I

    return-void
.end method

.method public setDoNotDisturbTimeStart(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeHourStart:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mDoNotDisturbTimeMinStart:I

    return-void
.end method

.method public setExpectedDisplayTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mExpectedDisplayTimeMillis:J

    return-void
.end method

.method public setFeedbackDispersionMax(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFeedbackDispersionMax:I

    return-void
.end method

.method public setFeedbackDispersionMin(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFeedbackDispersionMin:I

    return-void
.end method

.method public setFilter(Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFilter:Lcom/samsung/android/sdk/smp/marketing/MarketingFilter;

    return-void
.end method

.method public setFreqCapping(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_Day:I

    iput p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_DayLimit:I

    iput p3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_Hour:I

    iput p4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mFreqCapping_HourLimit:I

    return-void
.end method

.method public setPLink(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mPLink:Z

    return-void
.end method

.method public setRandomMinutes(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mRandomMinutes:I

    return-void
.end method

.method public setScreenOnTimeMinutes(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mScreenOnTimeMinutes:I

    return-void
.end method

.method public setStyle(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mStyle:Lorg/json/JSONObject;

    return-void
.end method

.method public setTimeBase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTimeBase:Ljava/lang/String;

    return-void
.end method

.method public setToFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setToFail(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method public setToResourceParsed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mIsResourceParsed:Z

    return-void
.end method

.method public setTtlEndMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTtlEndMillis:J

    return-void
.end method

.method public setTtlStartMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mTtlStartMillis:J

    return-void
.end method

.method public updateExpectedDisplayTime(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->adjustDisplayTimeRange()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->getTtlStartMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getStartTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->calculateDisplayTimeForOneRange(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Ljava/util/Calendar;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->calculateDisplayTimeForTwoRanges(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;Ljava/util/Calendar;)J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->setExpectedDisplayTime(Landroid/content/Context;J)V

    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->mMid:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update expected display time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
