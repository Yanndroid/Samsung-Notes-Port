.class public Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/common/util/TimeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Time"
.end annotation


# instance fields
.field private mHour:I

.field private mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->mHour:I

    iput p2, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->mMin:I

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->mHour:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->mMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->mHour:I

    iget v1, p0, Lcom/samsung/android/sdk/smp/common/util/TimeUtil$Time;->mMin:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/TimeUtil;->timeToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
