.class final Lio/grpc/netty/NettySocketSupport$NettySocketHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/NettySocketSupport$Helper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/NettySocketSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NettySocketHelperImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/NettySocketSupport$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/NettySocketSupport$NettySocketHelperImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getNativeSocketOptions(Lio/netty/channel/Channel;)Lio/grpc/netty/NettySocketSupport$NativeSocketOptions;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
