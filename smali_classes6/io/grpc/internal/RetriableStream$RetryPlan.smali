.class final Lio/grpc/internal/RetriableStream$RetryPlan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetryPlan"
.end annotation


# instance fields
.field public final backoffNanos:J

.field public final shouldRetry:Z


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->shouldRetry:Z

    iput-wide p2, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->backoffNanos:J

    return-void
.end method
