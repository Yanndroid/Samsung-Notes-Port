.class public final synthetic Lcom/samsung/scsp/framework/core/identity/api/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;


# instance fields
.field public final synthetic a:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;

.field public final synthetic b:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/c;->a:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/identity/api/c;->b:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/api/c;->a:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/api/c;->b:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, v1}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;->a(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$1;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
