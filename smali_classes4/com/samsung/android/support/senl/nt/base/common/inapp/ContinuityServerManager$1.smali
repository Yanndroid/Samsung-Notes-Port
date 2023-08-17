.class Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;
.super Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->connect(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContinuityServiceReconnected(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuityServiceReconnected# ContinuityState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getContinuityState()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getContinuityState()Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->DISCONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->connect(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
