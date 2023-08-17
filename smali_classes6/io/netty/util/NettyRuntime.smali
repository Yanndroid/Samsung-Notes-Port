.class public final Lio/netty/util/NettyRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;
    }
.end annotation


# static fields
.field private static final holder:Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;

    invoke-direct {v0}, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;-><init>()V

    sput-object v0, Lio/netty/util/NettyRuntime;->holder:Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableProcessors()I
    .locals 1

    sget-object v0, Lio/netty/util/NettyRuntime;->holder:Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;

    invoke-virtual {v0}, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static setAvailableProcessors(I)V
    .locals 1

    sget-object v0, Lio/netty/util/NettyRuntime;->holder:Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;

    invoke-virtual {v0, p0}, Lio/netty/util/NettyRuntime$AvailableProcessorsHolder;->setAvailableProcessors(I)V

    return-void
.end method
