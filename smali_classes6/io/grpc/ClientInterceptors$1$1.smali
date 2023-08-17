.class Lio/grpc/ClientInterceptors$1$1;
.super Lio/grpc/PartialForwardingClientCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ClientInterceptors$1;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/PartialForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/ClientInterceptors$1;

.field public final synthetic val$method:Lio/grpc/MethodDescriptor;

.field public final synthetic val$wrappedCall:Lio/grpc/ClientCall;


# direct methods
.method public constructor <init>(Lio/grpc/ClientInterceptors$1;Lio/grpc/ClientCall;Lio/grpc/MethodDescriptor;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/ClientInterceptors$1$1;->this$0:Lio/grpc/ClientInterceptors$1;

    iput-object p2, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    iput-object p3, p0, Lio/grpc/ClientInterceptors$1$1;->val$method:Lio/grpc/MethodDescriptor;

    invoke-direct {p0}, Lio/grpc/PartialForwardingClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public delegate()Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->val$method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getRequestMarshaller()Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->stream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->this$0:Lio/grpc/ClientInterceptors$1;

    iget-object v0, v0, Lio/grpc/ClientInterceptors$1;->val$reqMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    invoke-interface {v0, p1}, Lio/grpc/MethodDescriptor$Marshaller;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ClientInterceptors$1$1;->val$wrappedCall:Lio/grpc/ClientCall;

    new-instance v1, Lio/grpc/ClientInterceptors$1$1$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/ClientInterceptors$1$1$1;-><init>(Lio/grpc/ClientInterceptors$1$1;Lio/grpc/ClientCall$Listener;)V

    invoke-virtual {v0, v1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void
.end method
