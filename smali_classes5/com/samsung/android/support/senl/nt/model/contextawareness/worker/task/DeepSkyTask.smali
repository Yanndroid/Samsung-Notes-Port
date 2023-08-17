.class public abstract Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;->mParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    return-void
.end method


# virtual methods
.method public createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessBroadcastReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes.intent.action.DRAW_SUGGESTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;->mParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->getSubscribeId()I

    move-result v1

    const-string v2, "subscribe.id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/worker/task/DeepSkyTask;->mParam:Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/param/ContextAwarenessParam;->getSubscribeId()I

    move-result v1

    const/high16 v2, 0xa000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
