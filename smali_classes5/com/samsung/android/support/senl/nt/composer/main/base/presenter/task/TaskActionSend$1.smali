.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Context;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getCachePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "application/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "audio/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "text/plain"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;

    invoke-direct {v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;)V

    goto :goto_2

    :cond_1
    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "*/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;

    invoke-direct {v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;

    invoke-direct {v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->n()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ASend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->addFileLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLoadSendAction, Handle other intents."

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Landroid/content/Context;I)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    or-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Landroid/content/Context;I)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->hasWebClip()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperText;->getUrlForWebClip()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperCommon;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/actionsend/ActionSendHelperMultiple;->hasPdfUriList()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->n()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadSendAction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Landroid/content/Context;I)V

    :goto_3
    return-void
.end method
