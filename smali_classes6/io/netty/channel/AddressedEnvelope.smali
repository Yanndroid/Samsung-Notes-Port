.class public interface abstract Lio/netty/channel/AddressedEnvelope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ReferenceCounted;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/net/SocketAddress;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/ReferenceCounted;"
    }
.end annotation


# virtual methods
.method public abstract content()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public abstract recipient()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract retain()Lio/netty/channel/AddressedEnvelope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation
.end method

.method public abstract retain(I)Lio/netty/channel/AddressedEnvelope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation
.end method

.method public abstract sender()Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract touch()Lio/netty/channel/AddressedEnvelope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation
.end method

.method public abstract touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/netty/channel/AddressedEnvelope<",
            "TM;TA;>;"
        }
    .end annotation
.end method
