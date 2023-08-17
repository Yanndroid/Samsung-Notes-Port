.class public final Lio/netty/channel/DefaultSelectStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/SelectStrategyFactory;


# static fields
.field public static final INSTANCE:Lio/netty/channel/SelectStrategyFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/DefaultSelectStrategyFactory;

    invoke-direct {v0}, Lio/netty/channel/DefaultSelectStrategyFactory;-><init>()V

    sput-object v0, Lio/netty/channel/DefaultSelectStrategyFactory;->INSTANCE:Lio/netty/channel/SelectStrategyFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newSelectStrategy()Lio/netty/channel/SelectStrategy;
    .locals 1

    sget-object v0, Lio/netty/channel/DefaultSelectStrategy;->INSTANCE:Lio/netty/channel/SelectStrategy;

    return-object v0
.end method
