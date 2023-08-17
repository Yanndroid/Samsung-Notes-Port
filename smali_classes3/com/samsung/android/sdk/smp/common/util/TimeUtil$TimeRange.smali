.class public Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/common/util/TimeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeRange"
.end annotation


# instance fields
.field private mEndTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

.field private mStartTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->mStartTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->mEndTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-void
.end method


# virtual methods
.method public getEndTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->mEndTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-object v0
.end method

.method public getStartTime()Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->mStartTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->mStartTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$TimeRange;->mEndTime:Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
