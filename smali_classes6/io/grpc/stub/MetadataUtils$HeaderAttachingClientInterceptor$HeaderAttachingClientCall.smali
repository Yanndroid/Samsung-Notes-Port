.class final Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor$HeaderAttachingClientCall;
.super Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeaderAttachingClientCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;


# direct methods
.method public constructor <init>(Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;Lio/grpc/ClientCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor$HeaderAttachingClientCall;->this$0:Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;-><init>(Lio/grpc/ClientCall;)V

    return-void
.end method


# virtual methods
.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor$HeaderAttachingClientCall;->this$0:Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;

    invoke-static {v0}, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;->access$000(Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;)Lio/grpc/Metadata;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/grpc/Metadata;->merge(Lio/grpc/Metadata;)V

    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void
.end method
