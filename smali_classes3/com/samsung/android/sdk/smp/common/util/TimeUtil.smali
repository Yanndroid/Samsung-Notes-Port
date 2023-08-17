.class public Lcom/samsung/android/sdk/smp/common/util/TimeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;,
        Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeUtil"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustLocalTimeToUtc0(J)J
    .locals 3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static adjustUtc0ToLocalTime(II)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->adjustUtc0ToLocalTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p0

    return-object p0
.end method

.method public static adjustUtc0ToLocalTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    sget-object v1, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timezone offset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v0

    sget-wide v5, Lcom/samsung/android/sdk/smp/common/constants/Constants;->MINMILLIS:J

    div-long v5, v3, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "(min)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3, v4}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->shiftTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    move-result-object p0

    return-object p0
.end method

.method public static equals(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getRandomMillis(JJ)J
    .locals 2

    sub-long/2addr p2, p0

    sget-wide v0, Lcom/samsung/android/sdk/smp/common/constants/Constants;->SECMILLIS:J

    div-long/2addr p2, v0

    long-to-int p2, p2

    if-gtz p2, :cond_0

    return-wide p0

    :cond_0
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long p2, p2

    mul-long/2addr p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public static getString(J)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0
.end method

.method public static getTimeDiffMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I

    move-result p1

    sub-int/2addr p1, p0

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x5a0

    :cond_0
    return p1
.end method

.method public static isInvalidHour(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x18

    if-le p0, v0, :cond_0

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

.method public static isInvalidMinute(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0x3b

    if-le p0, v0, :cond_0

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

.method public static isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;II)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I

    move-result p1

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(II)I

    move-result p2

    const/4 p3, 0x1

    if-le p0, p1, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-gt p1, p2, :cond_2

    if-lt p2, p0, :cond_3

    :cond_2
    move v1, p3

    :cond_3
    return v1

    :cond_4
    if-gt p0, p2, :cond_5

    if-ge p2, p1, :cond_5

    move v1, p3

    :cond_5
    :goto_1
    return v1
.end method

.method public static isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p2, 0xb

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 p3, 0xc

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;II)Z

    move-result p0

    return p0
.end method

.method public static isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;II)Z

    move-result p0

    return p0
.end method

.method public static isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z
    .locals 0

    invoke-static {p2, p3, p4, p5}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->isTimeInBetween(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Z

    move-result p0

    return p0
.end method

.method public static setTime(Ljava/util/Calendar;III)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0x18

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_2

    const/16 v0, 0x3c

    if-ge p2, v0, :cond_2

    if-ltz p3, :cond_2

    if-lt p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static shiftTime(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;J)Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;-><init>(II)V

    return-object p0
.end method

.method private static timeToMin(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, p1

    return p0
.end method

.method private static timeToMin(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getHour()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->getMin()I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToMin(II)I

    move-result p0

    return p0
.end method

.method public static timeToString(II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    if-ge p1, p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
