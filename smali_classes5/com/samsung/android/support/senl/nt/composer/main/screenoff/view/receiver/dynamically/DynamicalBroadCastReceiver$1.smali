.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;->registerScreenOnReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$IBroadcastListener;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenOnReceiver onReceive intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$IBroadcastListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/dynamically/DynamicalBroadCastReceiver$IBroadcastListener;->onReceivedBroadcast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
