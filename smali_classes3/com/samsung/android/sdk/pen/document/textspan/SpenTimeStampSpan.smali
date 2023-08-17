.class public final Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;
.super Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;
.source "SourceFile"


# instance fields
.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(IIII)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;->mTimeStamp:J

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 2

    const/16 v0, 0x13

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;-><init>(IIII)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;->mTimeStamp:J

    cmp-long p1, p3, p1

    if-gez p1, :cond_0

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput-wide p3, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;->mTimeStamp:J

    return-wide v0
.end method

.method public setTimeStamp(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;->mTimeStamp:J

    return-void
.end method
