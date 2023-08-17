.class public final Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorChooserFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;,
        Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;

    invoke-direct {v0}, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;->INSTANCE:Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPowerOfTwo(I)Z
    .locals 1

    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public newChooser([Lio/netty/util/concurrent/EventExecutor;)Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;
    .locals 1

    array-length v0, p1

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;

    invoke-direct {v0, p1}, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$PowerOfTwoEventExecutorChooser;-><init>([Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;

    invoke-direct {v0, p1}, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;-><init>([Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method
