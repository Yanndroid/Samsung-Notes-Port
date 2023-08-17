.class final Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetUtilLocalhostAccessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Ljava/net/InetAddress;
    .locals 1

    invoke-static {}, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostLazyHolder;->access$200()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/net/InetAddress;)V
    .locals 0

    return-void
.end method
