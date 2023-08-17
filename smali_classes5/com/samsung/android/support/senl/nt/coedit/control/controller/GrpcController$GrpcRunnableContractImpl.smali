.class Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GrpcRunnableContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isClosing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->isClosing()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$GrpcRunnableContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->a(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/GrpcControllerContractImpl;->showToast(Ljava/lang/String;)V

    return-void
.end method
