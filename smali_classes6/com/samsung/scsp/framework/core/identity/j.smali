.class public final synthetic Lcom/samsung/scsp/framework/core/identity/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/j;->a:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/j;->a:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;

    invoke-virtual {v0}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->register()V

    return-void
.end method
