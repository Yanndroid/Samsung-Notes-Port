.class final Lio/grpc/internal/RetriableStream$Substream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Substream"
.end annotation


# instance fields
.field public bufferLimitExceeded:Z

.field public closed:Z

.field public final previousAttemptCount:I

.field public stream:Lio/grpc/internal/ClientStream;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    return-void
.end method
