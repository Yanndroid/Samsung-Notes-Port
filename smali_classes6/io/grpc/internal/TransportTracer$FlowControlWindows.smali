.class public final Lio/grpc/internal/TransportTracer$FlowControlWindows;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/TransportTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowControlWindows"
.end annotation


# instance fields
.field public final localBytes:J

.field public final remoteBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/grpc/internal/TransportTracer$FlowControlWindows;->localBytes:J

    iput-wide p3, p0, Lio/grpc/internal/TransportTracer$FlowControlWindows;->remoteBytes:J

    return-void
.end method
