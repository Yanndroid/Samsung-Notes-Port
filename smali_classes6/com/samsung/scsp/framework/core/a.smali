.class public final synthetic Lcom/samsung/scsp/framework/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/SContext;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/SContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/a;->a:Lcom/samsung/scsp/framework/core/SContext;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/a;->a:Lcom/samsung/scsp/framework/core/SContext;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/SContext;->b(Lcom/samsung/scsp/framework/core/SContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
