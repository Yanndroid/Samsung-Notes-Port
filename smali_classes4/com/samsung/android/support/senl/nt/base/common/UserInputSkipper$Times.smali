.class Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Times"
.end annotation


# instance fields
.field public skipTime:J

.field public startTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->startTime:J

    iput-wide p3, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->skipTime:J

    return-void
.end method


# virtual methods
.method public endTime()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->startTime:J

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->skipTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isActive()Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->skipTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->startTime:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->startTime:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->skipTime:J

    return-void
.end method

.method public setTime(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->startTime:J

    iput-wide p3, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->skipTime:J

    return-void
.end method

.method public setTime(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;)V
    .locals 2

    iget-wide v0, p1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->startTime:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->startTime:J

    iget-wide v0, p1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->skipTime:J

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Times;->skipTime:J

    return-void
.end method
