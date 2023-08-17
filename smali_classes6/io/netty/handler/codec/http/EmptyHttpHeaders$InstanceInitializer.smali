.class final Lio/netty/handler/codec/http/EmptyHttpHeaders$InstanceInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/EmptyHttpHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceInitializer"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EMPTY_HEADERS:Lio/netty/handler/codec/http/EmptyHttpHeaders;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http/EmptyHttpHeaders;

    invoke-direct {v0}, Lio/netty/handler/codec/http/EmptyHttpHeaders;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/EmptyHttpHeaders$InstanceInitializer;->EMPTY_HEADERS:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lio/netty/handler/codec/http/EmptyHttpHeaders;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/EmptyHttpHeaders$InstanceInitializer;->EMPTY_HEADERS:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    return-object v0
.end method
