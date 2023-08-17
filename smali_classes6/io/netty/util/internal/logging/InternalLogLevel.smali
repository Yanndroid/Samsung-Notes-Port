.class public final enum Lio/netty/util/internal/logging/InternalLogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/util/internal/logging/InternalLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/util/internal/logging/InternalLogLevel;

.field public static final enum DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

.field public static final enum ERROR:Lio/netty/util/internal/logging/InternalLogLevel;

.field public static final enum INFO:Lio/netty/util/internal/logging/InternalLogLevel;

.field public static final enum TRACE:Lio/netty/util/internal/logging/InternalLogLevel;

.field public static final enum WARN:Lio/netty/util/internal/logging/InternalLogLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/util/internal/logging/InternalLogLevel;->TRACE:Lio/netty/util/internal/logging/InternalLogLevel;

    new-instance v1, Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/util/internal/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/util/internal/logging/InternalLogLevel;->DEBUG:Lio/netty/util/internal/logging/InternalLogLevel;

    new-instance v3, Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/util/internal/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/util/internal/logging/InternalLogLevel;->INFO:Lio/netty/util/internal/logging/InternalLogLevel;

    new-instance v5, Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v7, "WARN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/util/internal/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/util/internal/logging/InternalLogLevel;->WARN:Lio/netty/util/internal/logging/InternalLogLevel;

    new-instance v7, Lio/netty/util/internal/logging/InternalLogLevel;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/util/internal/logging/InternalLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/util/internal/logging/InternalLogLevel;->ERROR:Lio/netty/util/internal/logging/InternalLogLevel;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/netty/util/internal/logging/InternalLogLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lio/netty/util/internal/logging/InternalLogLevel;->$VALUES:[Lio/netty/util/internal/logging/InternalLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogLevel;
    .locals 1

    const-class v0, Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/util/internal/logging/InternalLogLevel;

    return-object p0
.end method

.method public static values()[Lio/netty/util/internal/logging/InternalLogLevel;
    .locals 1

    sget-object v0, Lio/netty/util/internal/logging/InternalLogLevel;->$VALUES:[Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-virtual {v0}, [Lio/netty/util/internal/logging/InternalLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/util/internal/logging/InternalLogLevel;

    return-object v0
.end method
