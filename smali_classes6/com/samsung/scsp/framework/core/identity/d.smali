.class public final synthetic Lcom/samsung/scsp/framework/core/identity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/IdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/d;->a:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/d;->a:Lcom/samsung/scsp/framework/core/identity/IdentityImpl;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/identity/IdentityImpl;->c(Lcom/samsung/scsp/framework/core/identity/IdentityImpl;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
