.class final Lio/netty/util/NetUtilSubstitutions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/oracle/svm/core/annotate/TargetClass;
    value = Lio/netty/util/NetUtil;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostLazyHolder;,
        Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostAccessor;,
        Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6LazyHolder;,
        Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6Accessor;,
        Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost4LazyHolder;,
        Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost4Accessor;
    }
.end annotation


# static fields
.field public static LOCALHOST:Ljava/net/InetAddress;
    .annotation runtime Lcom/oracle/svm/core/annotate/Alias;
    .end annotation

    .annotation runtime Lcom/oracle/svm/core/annotate/InjectAccessors;
        value = Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostAccessor;
    .end annotation
.end field

.field public static LOCALHOST4:Ljava/net/Inet4Address;
    .annotation runtime Lcom/oracle/svm/core/annotate/Alias;
    .end annotation

    .annotation runtime Lcom/oracle/svm/core/annotate/InjectAccessors;
        value = Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost4Accessor;
    .end annotation
.end field

.field public static LOCALHOST6:Ljava/net/Inet6Address;
    .annotation runtime Lcom/oracle/svm/core/annotate/Alias;
    .end annotation

    .annotation runtime Lcom/oracle/svm/core/annotate/InjectAccessors;
        value = Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6Accessor;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
