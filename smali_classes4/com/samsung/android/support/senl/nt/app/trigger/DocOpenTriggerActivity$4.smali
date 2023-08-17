.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string v1, "onCancel()"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public requestConvert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "DocOpenTriggerActivity"

    const-string v1, "requestConvert"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->i(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->createTaskWithoutValidCheck(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V

    return-void
.end method
