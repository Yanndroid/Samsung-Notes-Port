.class public final synthetic Lcom/samsung/scsp/framework/core/identity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/IdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/c;->a:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/c;->a:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;->b(Lcom/samsung/scsp/framework/core/identity/IdentityImpl;)V

    return-void
.end method
