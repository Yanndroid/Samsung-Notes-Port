.class public abstract Lio/netty/util/ResourceLeakDetectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;
    }
.end annotation


# static fields
.field private static volatile factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/netty/util/ResourceLeakDetectorFactory;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v0, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;

    invoke-direct {v0}, Lio/netty/util/ResourceLeakDetectorFactory$DefaultResourceLeakDetectorFactory;-><init>()V

    sput-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    sget-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static instance()Lio/netty/util/ResourceLeakDetectorFactory;
    .locals 1

    sget-object v0, Lio/netty/util/ResourceLeakDetectorFactory;->factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

    return-object v0
.end method

.method public static setResourceLeakDetectorFactory(Lio/netty/util/ResourceLeakDetectorFactory;)V
    .locals 1

    const-string v0, "factory"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/ResourceLeakDetectorFactory;

    sput-object p0, Lio/netty/util/ResourceLeakDetectorFactory;->factoryInstance:Lio/netty/util/ResourceLeakDetectorFactory;

    return-void
.end method


# virtual methods
.method public final newResourceLeakDetector(Ljava/lang/Class;)Lio/netty/util/ResourceLeakDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lio/netty/util/ResourceLeakDetector;->SAMPLING_INTERVAL:I

    invoke-virtual {p0, p1, v0}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;I)Lio/netty/util/ResourceLeakDetector;

    move-result-object p1

    return-object p1
.end method

.method public newResourceLeakDetector(Ljava/lang/Class;I)Lio/netty/util/ResourceLeakDetector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "samplingInterval"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/netty/util/ResourceLeakDetectorFactory;->newResourceLeakDetector(Ljava/lang/Class;IJ)Lio/netty/util/ResourceLeakDetector;

    move-result-object p1

    return-object p1
.end method

.method public abstract newResourceLeakDetector(Ljava/lang/Class;IJ)Lio/netty/util/ResourceLeakDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IJ)",
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
