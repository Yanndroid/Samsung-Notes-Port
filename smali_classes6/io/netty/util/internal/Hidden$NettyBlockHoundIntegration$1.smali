.class Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;->applyTo(Lreactor/blockhound/BlockHound$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/util/function/Predicate<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/util/function/Predicate<",
        "Ljava/lang/Thread;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;


# direct methods
.method public constructor <init>(Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;->this$0:Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/function/Predicate;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;->apply(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Thread;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1$1;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1$1;-><init>(Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;Ljava/util/function/Predicate;)V

    return-object v0
.end method
