.class Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;->requestGroupAndSpaceSyncAndNotify(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

.field public final synthetic val$groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$3;->this$0:Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$3;->val$groupId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CoeditPushReceiver"

    const-string v1, "requestCoeditInviteAcceptanceReceiver()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;

    const-string v1, "COEDIT_I_INVITE_EVENT"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/receiver/CoeditPushReceiver$3;->val$groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->setEventData(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->publish(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;)Z

    return-void
.end method
