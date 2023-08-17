.class Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->setMessageCompression(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageCompressionEntry"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field public final synthetic val$enable:Z


# direct methods
.method public constructor <init>(Lio/grpc/internal/RetriableStream;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput-boolean p2, p0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 1

    iget-object p1, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;->val$enable:Z

    invoke-interface {p1, v0}, Lio/grpc/internal/Stream;->setMessageCompression(Z)V

    return-void
.end method
