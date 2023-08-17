.class public abstract Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;
.super Lio/grpc/ForwardingClientCallListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ForwardingClientCallListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingClientCallListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingClientCallListener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/ClientCall$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/ForwardingClientCallListener;-><init>()V

    iput-object p1, p0, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->delegate:Lio/grpc/ClientCall$Listener;

    return-void
.end method


# virtual methods
.method public delegate()Lio/grpc/ClientCall$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->delegate:Lio/grpc/ClientCall$Listener;

    return-object v0
.end method

.method public bridge synthetic onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingClientCallListener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method public bridge synthetic onHeaders(Lio/grpc/Metadata;)V
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/ForwardingClientCallListener;->onHeaders(Lio/grpc/Metadata;)V

    return-void
.end method

.method public bridge synthetic onReady()V
    .locals 0

    invoke-super {p0}, Lio/grpc/ForwardingClientCallListener;->onReady()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/grpc/ForwardingClientCallListener;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
