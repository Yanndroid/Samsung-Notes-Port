.class Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditTransformDataContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoeditTransformDataContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Lcom/samsung/android/support/senl/nt/coedit/connection/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;-><init>(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)V

    return-void
.end method


# virtual methods
.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "reconnect"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->isConcurrencyPausedByNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->reconnect(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public releaseLock(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->releaseLock(Ljava/lang/String;)V

    return-void
.end method

.method public setPausedByNetwork(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    const-string v1, "setPausedByNetwork"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->e(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl$CoeditTransformDataContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelperImpl;)Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/ConnectionHelperContract;->setPausedByNetwork(Ljava/lang/String;)V

    return-void
.end method
