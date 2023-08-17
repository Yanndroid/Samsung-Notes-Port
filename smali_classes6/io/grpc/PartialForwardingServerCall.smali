.class abstract Lio/grpc/PartialForwardingServerCall;
.super Lio/grpc/ServerCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ServerCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/ServerCall;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ServerCall;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method public abstract delegate()Lio/grpc/ServerCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerCall<",
            "**>;"
        }
    .end annotation
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1
    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/1779"
    .end annotation

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerCall;->isReady()Z

    move-result v0

    return v0
.end method

.method public request(I)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->request(I)V

    return-void
.end method

.method public sendHeaders(Lio/grpc/Metadata;)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->sendHeaders(Lio/grpc/Metadata;)V

    return-void
.end method

.method public setCompression(Ljava/lang/String;)V
    .locals 1
    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/1704"
    .end annotation

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setCompression(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .annotation build Lio/grpc/ExperimentalApi;
        value = "https://github.com/grpc/grpc-java/issues/1703"
    .end annotation

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerCall;->setMessageCompression(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/PartialForwardingServerCall;->delegate()Lio/grpc/ServerCall;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
