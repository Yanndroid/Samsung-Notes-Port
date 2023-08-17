.class Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver$1;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v2, "subscribe.id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action/subscribeId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.notes.intent.action.DRAW_SUGGESTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;->DRAW_SUGGESTION:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setType(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->setIntent(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->postContextAwarenessTask(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V

    goto :goto_1

    :cond_0
    const-string v1, "com.samsung.android.app.notes.intent.action.ATTACH_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;->getInstance()Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam$ContextAwarenessParamBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;->ATTACH_CONTENT:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/IContextAwarenessParam$Type;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive invalid action"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
