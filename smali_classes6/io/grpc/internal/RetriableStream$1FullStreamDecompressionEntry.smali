.class Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->setFullStreamDecompression(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullStreamDecompressionEntry"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field public final synthetic val$fullStreamDecompression:Z


# direct methods
.method public constructor <init>(Lio/grpc/internal/RetriableStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput-boolean p2, p0, Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;->val$fullStreamDecompression:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 1

    iget-object p1, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;->val$fullStreamDecompression:Z

    invoke-interface {p1, v0}, Lio/grpc/internal/ClientStream;->setFullStreamDecompression(Z)V

    return-void
.end method
