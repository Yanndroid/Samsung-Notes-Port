.class public final synthetic Lcom/samsung/scsp/framework/core/identity/api/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

.field public final synthetic b:Lcom/samsung/scsp/framework/core/SContextHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;Lcom/samsung/scsp/framework/core/SContextHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/a;->a:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/identity/api/a;->b:Lcom/samsung/scsp/framework/core/SContextHolder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/a;->a:Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/api/a;->b:Lcom/samsung/scsp/framework/core/SContextHolder;

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;->a(Lcom/samsung/scsp/framework/core/identity/api/IdentityHeader;Lcom/samsung/scsp/framework/core/SContextHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
