.class public final enum Lio/netty/handler/logging/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/logging/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/logging/LogLevel;

.field public static final enum DEBUG:Lio/netty/handler/logging/LogLevel;

.field public static final enum ERROR:Lio/netty/handler/logging/LogLevel;

.field public static final enum INFO:Lio/netty/handler/logging/LogLevel;

.field public static final enum TRACE:Lio/netty/handler/logging/LogLevel;

.field public static final enum WARN:Lio/netty/handler/logging/LogLevel;


# instance fields
.field private final internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lio/netty/handler/logging/LogLevel;

    sget-object v1, Lio/netty/util/internal/logging/InternalLogLevel;->TRACE:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v2, "TRACE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v0, Lio/netty/handler/logging/LogLevel;->TRACE:Lio/netty/handler/logging/LogLevel;

    new-instance v1, Lio/netty/handler/logging/LogLevel;

    sget-object v2, Lio/netty/util/internal/logging/InternalLogLevel;->DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v4, "DEBUG"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v1, Lio/netty/handler/logging/LogLevel;->DEBUG:Lio/netty/handler/logging/LogLevel;

    new-instance v2, Lio/netty/handler/logging/LogLevel;

    sget-object v4, Lio/netty/util/internal/logging/InternalLogLevel;->INFO:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v6, "INFO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v2, Lio/netty/handler/logging/LogLevel;->INFO:Lio/netty/handler/logging/LogLevel;

    new-instance v4, Lio/netty/handler/logging/LogLevel;

    sget-object v6, Lio/netty/util/internal/logging/InternalLogLevel;->WARN:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v8, "WARN"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v4, Lio/netty/handler/logging/LogLevel;->WARN:Lio/netty/handler/logging/LogLevel;

    new-instance v6, Lio/netty/handler/logging/LogLevel;

    sget-object v8, Lio/netty/util/internal/logging/InternalLogLevel;->ERROR:Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v10, "ERROR"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lio/netty/handler/logging/LogLevel;-><init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V

    sput-object v6, Lio/netty/handler/logging/LogLevel;->ERROR:Lio/netty/handler/logging/LogLevel;

    const/4 v8, 0x5

    new-array v8, v8, [Lio/netty/handler/logging/LogLevel;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lio/netty/handler/logging/LogLevel;->$VALUES:[Lio/netty/handler/logging/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/netty/util/internal/logging/InternalLogLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/logging/InternalLogLevel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/netty/handler/logging/LogLevel;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/logging/LogLevel;
    .locals 1

    const-class v0, Lio/netty/handler/logging/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/logging/LogLevel;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/logging/LogLevel;
    .locals 1

    sget-object v0, Lio/netty/handler/logging/LogLevel;->$VALUES:[Lio/netty/handler/logging/LogLevel;

    invoke-virtual {v0}, [Lio/netty/handler/logging/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/logging/LogLevel;

    return-object v0
.end method


# virtual methods
.method public toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/logging/LogLevel;->internalLevel:Lio/netty/util/internal/logging/InternalLogLevel;

    return-object v0
.end method
