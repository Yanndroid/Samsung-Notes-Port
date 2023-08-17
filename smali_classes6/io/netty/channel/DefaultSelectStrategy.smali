.class final Lio/netty/channel/DefaultSelectStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/SelectStrategy;


# static fields
.field public static final INSTANCE:Lio/netty/channel/SelectStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/DefaultSelectStrategy;

    invoke-direct {v0}, Lio/netty/channel/DefaultSelectStrategy;-><init>()V

    sput-object v0, Lio/netty/channel/DefaultSelectStrategy;->INSTANCE:Lio/netty/channel/SelectStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateStrategy(Lio/netty/util/IntSupplier;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lio/netty/util/IntSupplier;->get()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
