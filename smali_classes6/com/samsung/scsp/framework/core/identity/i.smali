.class public final synthetic Lcom/samsung/scsp/framework/core/identity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/Registration;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/Registration;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/i;->a:Lcom/samsung/scsp/framework/core/identity/Registration;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/identity/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/i;->a:Lcom/samsung/scsp/framework/core/identity/Registration;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/i;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/identity/Registration;->a(Lcom/samsung/scsp/framework/core/identity/Registration;Ljava/lang/String;)V

    return-void
.end method
