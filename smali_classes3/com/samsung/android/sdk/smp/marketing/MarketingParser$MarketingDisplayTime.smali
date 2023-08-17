.class public Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarketingDisplayTime"
.end annotation


# instance fields
.field public displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field public displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field public doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field public doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field public timeBase:Ljava/lang/String;

.field public ttlEndMillis:J

.field public ttlStartMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->timeBase:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlStartMillis:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->ttlEndMillis:J

    iput-object p6, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-object p7, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->displayTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-object p8, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeStart:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-object p9, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$MarketingDisplayTime;->doNotDisturbTimeEnd:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-void
.end method
