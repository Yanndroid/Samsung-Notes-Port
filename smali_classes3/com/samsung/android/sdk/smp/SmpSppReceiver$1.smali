.class Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/push/PushMsgHandler$ISmpPushInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/SmpSppReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/smp/SmpSppReceiver;

.field public final synthetic val$applicationContext:Landroid/content/Context;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/SmpSppReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->this$0:Lcom/samsung/android/sdk/smp/SmpSppReceiver;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generalMessageReceivedImpl()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->this$0:Lcom/samsung/android/sdk/smp/SmpSppReceiver;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->val$applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->messageReceived(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public isMarketingDisplayEnabledImpl(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->this$0:Lcom/samsung/android/sdk/smp/SmpSppReceiver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->isMarketingDisplayEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public marketingMessageReceivedImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpSppReceiver$1;->this$0:Lcom/samsung/android/sdk/smp/SmpSppReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/SmpSppReceiver;->marketingMessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
