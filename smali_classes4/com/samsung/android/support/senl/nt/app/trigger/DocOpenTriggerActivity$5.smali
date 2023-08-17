.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openDocument()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

.field public final synthetic val$callerId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->val$callerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->f(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->f(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showImportProgressDialog()Z

    new-instance v0, Lt1/a;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DocOpenTriggerActivity"

    invoke-direct {v0, v1, p1, v2}, Lt1/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lt1/a;->N(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Lt1/a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lt1/a;->O(Z)Lt1/a;

    move-result-object p1

    invoke-virtual {p1}, Lt1/a;->execute()V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->s(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->val$callerId:I

    const/4 v4, -0x1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->i(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->r(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V

    :goto_0
    return-void
.end method
