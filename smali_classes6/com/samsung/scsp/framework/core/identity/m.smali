.class public final synthetic Lcom/samsung/scsp/framework/core/identity/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/m;->a:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/m;->a:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;

    invoke-virtual {v0}, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->issue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
