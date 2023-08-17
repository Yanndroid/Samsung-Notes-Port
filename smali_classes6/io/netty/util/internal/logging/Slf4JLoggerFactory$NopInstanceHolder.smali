.class final Lio/netty/util/internal/logging/Slf4JLoggerFactory$NopInstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/logging/Slf4JLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NopInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE_WITH_NOP_CHECK:Lio/netty/util/internal/logging/InternalLoggerFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/util/internal/logging/Slf4JLoggerFactory;-><init>(Z)V

    sput-object v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory$NopInstanceHolder;->INSTANCE_WITH_NOP_CHECK:Lio/netty/util/internal/logging/InternalLoggerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lio/netty/util/internal/logging/InternalLoggerFactory;
    .locals 1

    sget-object v0, Lio/netty/util/internal/logging/Slf4JLoggerFactory$NopInstanceHolder;->INSTANCE_WITH_NOP_CHECK:Lio/netty/util/internal/logging/InternalLoggerFactory;

    return-object v0
.end method
