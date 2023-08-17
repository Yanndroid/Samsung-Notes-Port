.class public final Lio/netty/channel/group/ChannelMatchers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/group/ChannelMatchers$ClassMatcher;,
        Lio/netty/channel/group/ChannelMatchers$InstanceMatcher;,
        Lio/netty/channel/group/ChannelMatchers$InvertMatcher;,
        Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;
    }
.end annotation


# static fields
.field private static final ALL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

.field private static final NON_SERVER_CHANNEL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

.field private static final SERVER_CHANNEL_MATCHER:Lio/netty/channel/group/ChannelMatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/group/ChannelMatchers$1;

    invoke-direct {v0}, Lio/netty/channel/group/ChannelMatchers$1;-><init>()V

    sput-object v0, Lio/netty/channel/group/ChannelMatchers;->ALL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

    const-class v0, Lio/netty/channel/ServerChannel;

    invoke-static {v0}, Lio/netty/channel/group/ChannelMatchers;->isInstanceOf(Ljava/lang/Class;)Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    sput-object v0, Lio/netty/channel/group/ChannelMatchers;->SERVER_CHANNEL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

    const-class v0, Lio/netty/channel/ServerChannel;

    invoke-static {v0}, Lio/netty/channel/group/ChannelMatchers;->isNotInstanceOf(Ljava/lang/Class;)Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    sput-object v0, Lio/netty/channel/group/ChannelMatchers;->NON_SERVER_CHANNEL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()Lio/netty/channel/group/ChannelMatcher;
    .locals 1

    sget-object v0, Lio/netty/channel/group/ChannelMatchers;->ALL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

    return-object v0
.end method

.method public static varargs compose([Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelMatcher;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    array-length v0, p0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    new-instance v0, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;

    invoke-direct {v0, p0}, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;-><init>([Lio/netty/channel/group/ChannelMatcher;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "matchers must at least contain one element"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invert(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelMatcher;
    .locals 1

    new-instance v0, Lio/netty/channel/group/ChannelMatchers$InvertMatcher;

    invoke-direct {v0, p0}, Lio/netty/channel/group/ChannelMatchers$InvertMatcher;-><init>(Lio/netty/channel/group/ChannelMatcher;)V

    return-object v0
.end method

.method public static is(Lio/netty/channel/Channel;)Lio/netty/channel/group/ChannelMatcher;
    .locals 1

    new-instance v0, Lio/netty/channel/group/ChannelMatchers$InstanceMatcher;

    invoke-direct {v0, p0}, Lio/netty/channel/group/ChannelMatchers$InstanceMatcher;-><init>(Lio/netty/channel/Channel;)V

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Class;)Lio/netty/channel/group/ChannelMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/channel/group/ChannelMatcher;"
        }
    .end annotation

    new-instance v0, Lio/netty/channel/group/ChannelMatchers$ClassMatcher;

    invoke-direct {v0, p0}, Lio/netty/channel/group/ChannelMatchers$ClassMatcher;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static isNonServerChannel()Lio/netty/channel/group/ChannelMatcher;
    .locals 1

    sget-object v0, Lio/netty/channel/group/ChannelMatchers;->NON_SERVER_CHANNEL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

    return-object v0
.end method

.method public static isNot(Lio/netty/channel/Channel;)Lio/netty/channel/group/ChannelMatcher;
    .locals 0

    invoke-static {p0}, Lio/netty/channel/group/ChannelMatchers;->is(Lio/netty/channel/Channel;)Lio/netty/channel/group/ChannelMatcher;

    move-result-object p0

    invoke-static {p0}, Lio/netty/channel/group/ChannelMatchers;->invert(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static isNotInstanceOf(Ljava/lang/Class;)Lio/netty/channel/group/ChannelMatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;)",
            "Lio/netty/channel/group/ChannelMatcher;"
        }
    .end annotation

    invoke-static {p0}, Lio/netty/channel/group/ChannelMatchers;->isInstanceOf(Ljava/lang/Class;)Lio/netty/channel/group/ChannelMatcher;

    move-result-object p0

    invoke-static {p0}, Lio/netty/channel/group/ChannelMatchers;->invert(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static isServerChannel()Lio/netty/channel/group/ChannelMatcher;
    .locals 1

    sget-object v0, Lio/netty/channel/group/ChannelMatchers;->SERVER_CHANNEL_MATCHER:Lio/netty/channel/group/ChannelMatcher;

    return-object v0
.end method
