.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;

.field public final synthetic val$msg:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;->val$msg:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->f(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;->val$msg:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;->getSrcType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->a(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->f(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9$1;->val$msg:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showPasswordDialog(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method
