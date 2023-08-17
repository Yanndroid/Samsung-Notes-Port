.class Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;->execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;

.field public final synthetic val$gson:Lcom/google/gson/Gson;

.field public final synthetic val$result:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;Lcom/google/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->this$0:Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->val$result:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    iput-object p3, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->val$gson:Lcom/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->val$result:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->val$result:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->val$gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->val$result:Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestComplete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BixbyDeleteAction"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;->this$0:Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;

    iget-object v1, v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;->mCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    return-void
.end method
