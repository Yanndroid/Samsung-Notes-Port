.class Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->getRequestConfirmation()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
        "Ljava/lang/String;",
        "Lcom/microsoft/identity/common/java/exception/ClientException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

.field public final synthetic val$errorResult:[Lcom/microsoft/identity/common/java/exception/ClientException;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$result:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;[Lcom/microsoft/identity/common/java/exception/ClientException;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$result:[Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$errorResult:[Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/microsoft/identity/common/java/exception/ClientException;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/exception/ClientException;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "error is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$errorResult:[Lcom/microsoft/identity/common/java/exception/ClientException;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->onError(Lcom/microsoft/identity/common/java/exception/ClientException;)V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->onTaskCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "reqCnf is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$result:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
