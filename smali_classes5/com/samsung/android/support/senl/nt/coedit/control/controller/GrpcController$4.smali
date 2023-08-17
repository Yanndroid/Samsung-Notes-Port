.class Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$4;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;->closeHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
        "Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$4;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/coedit/connection/DummyConnectionHelperImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/DummyConnectionHelperImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/GrpcController$4;->build()Lcom/samsung/android/support/senl/nt/coedit/connection/ConnectionHelper;

    move-result-object v0

    return-object v0
.end method
