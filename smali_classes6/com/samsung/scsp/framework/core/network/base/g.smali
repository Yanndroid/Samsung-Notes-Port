.class public final synthetic Lcom/samsung/scsp/framework/core/network/base/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;

.field public final synthetic b:Lcom/samsung/scsp/framework/core/common/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;Lcom/samsung/scsp/framework/core/common/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/base/g;->a:Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/network/base/g;->b:Lcom/samsung/scsp/framework/core/common/Predicate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/base/g;->a:Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/network/base/g;->b:Lcom/samsung/scsp/framework/core/common/Predicate;

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;->f(Lcom/samsung/scsp/framework/core/network/base/NetworkImpl;Lcom/samsung/scsp/framework/core/common/Predicate;)V

    return-void
.end method
