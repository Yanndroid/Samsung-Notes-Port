.class final Lio/grpc/netty/AbstractNettyHandler$AllowPingLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/AbstractNettyHandler$PingLimiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/AbstractNettyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllowPingLimiter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/AbstractNettyHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/AbstractNettyHandler$AllowPingLimiter;-><init>()V

    return-void
.end method


# virtual methods
.method public isPingAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
