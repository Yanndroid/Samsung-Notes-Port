.class Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/ListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetachReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/ListenerManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/ListenerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;->this$0:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/ListenerManager;Lcom/samsung/android/sdk/pen/engine/ListenerManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;-><init>(Lcom/samsung/android/sdk/pen/engine/ListenerManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "penInsert"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " penInsert="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ListenerManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;->this$0:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->access$100(Lcom/samsung/android/sdk/pen/engine/ListenerManager;)Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/ListenerManager$DetachReceiver;->this$0:Lcom/samsung/android/sdk/pen/engine/ListenerManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/ListenerManager;->access$100(Lcom/samsung/android/sdk/pen/engine/ListenerManager;)Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/engine/SpenPenDetachmentListener;->onDetached(Z)V

    :cond_0
    return-void
.end method
