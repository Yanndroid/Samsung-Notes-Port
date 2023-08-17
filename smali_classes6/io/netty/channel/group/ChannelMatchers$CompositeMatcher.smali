.class final Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/group/ChannelMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/group/ChannelMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositeMatcher"
.end annotation


# instance fields
.field private final matchers:[Lio/netty/channel/group/ChannelMatcher;


# direct methods
.method public varargs constructor <init>([Lio/netty/channel/group/ChannelMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;->matchers:[Lio/netty/channel/group/ChannelMatcher;

    return-void
.end method


# virtual methods
.method public matches(Lio/netty/channel/Channel;)Z
    .locals 5

    iget-object v0, p0, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;->matchers:[Lio/netty/channel/group/ChannelMatcher;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4, p1}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
