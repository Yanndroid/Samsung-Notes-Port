.class Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->generateAsymmetricKey(Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

.field public final synthetic val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$1;->this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$1;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$1;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$1;->this$0:Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;->generateAsymmetricKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$1;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    invoke-interface {v1, v0}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
