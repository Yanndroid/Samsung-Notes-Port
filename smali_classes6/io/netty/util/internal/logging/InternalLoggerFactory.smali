.class public abstract Lio/netty/util/internal/logging/InternalLoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFactory()Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 1

    sget-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    if-nez v0, :cond_0

    const-class v0, Lio/netty/util/internal/logging/InternalLoggerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newDefaultFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    :cond_0
    sget-object v0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/netty/util/internal/logging/InternalLogger;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    invoke-static {}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getDefaultFactory()Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p0

    return-object p0
.end method

.method private static newDefaultFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 1

    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useSlf4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useLog4J2LoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useLog4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->useJdkLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object p0

    return-object p0
.end method

.method public static setDefaultFactory(Lio/netty/util/internal/logging/InternalLoggerFactory;)V
    .locals 1

    const-string v0, "defaultFactory"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/internal/logging/InternalLoggerFactory;

    sput-object p0, Lio/netty/util/internal/logging/InternalLoggerFactory;->defaultFactory:Lio/netty/util/internal/logging/InternalLoggerFactory;

    return-void
.end method

.method private static useJdkLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 2

    sget-object v0, Lio/netty/util/internal/logging/JdkLoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    invoke-virtual {v0, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p0

    const-string v1, "Using java.util.logging as the default logging framework"

    invoke-interface {p0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    return-object v0
.end method

.method private static useLog4J2LoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/netty/util/internal/logging/Log4J2LoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    invoke-virtual {v1, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p0

    const-string v2, "Using Log4J2 as the default logging framework"

    invoke-interface {p0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static useLog4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lio/netty/util/internal/logging/Log4JLoggerFactory;->INSTANCE:Lio/netty/util/internal/logging/InternalLoggerFactory;

    invoke-virtual {v1, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p0

    const-string v2, "Using Log4J as the default logging framework"

    invoke-interface {p0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static useSlf4JLoggerFactory(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lio/netty/util/internal/logging/Slf4JLoggerFactory;->getInstanceWithNopCheck()Lio/netty/util/internal/logging/InternalLoggerFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object p0

    const-string v2, "Using SLF4J as the default logging framework"

    invoke-interface {p0, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;
.end method
