.class public abstract Lio/netty/channel/unix/GenericUnixChannelOption;
.super Lio/netty/channel/unix/UnixChannelOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/unix/UnixChannelOption<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final level:I

.field private final optname:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/unix/UnixChannelOption;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->level:I

    iput p3, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->optname:I

    return-void
.end method


# virtual methods
.method public level()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->level:I

    return v0
.end method

.method public optname()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/GenericUnixChannelOption;->optname:I

    return v0
.end method
