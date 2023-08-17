.class Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->handleDelegationOwner(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

.field public final synthetic val$appContext:Landroid/content/Context;

.field public final synthetic val$groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;->this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "CoeditPushReceiver"

    const-string v1, "handleDelegationOwner() sync finished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "COEDIT_GROUP_OWNER_DELEGATION_RECEIVED_INTENT_FILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;->val$groupId:Ljava/lang/String;

    const-string v2, "COEDIT_DELEGATION_GROUP_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$1;->val$appContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
