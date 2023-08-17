.class Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->connect(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->CONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->setContinuityState(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->onServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->DISCONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->setContinuityState(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->onServiceDisconnected(Landroid/content/Context;)V

    return-void
.end method
