.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->onPostExecute(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

.field public final synthetic val$convertList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->val$convertList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinish(IILjava/util/Map;I)V
    .locals 6
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->g(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->f(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->val$convertList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->s(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    iget-object v1, p2, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->val$convertList:Ljava/util/List;

    iget v3, p2, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->val$callerId:I

    const/4 v4, -0x1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->i(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->r(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnsupportedVersionError(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5$1;->this$1:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->l(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    const/4 p1, 0x1

    return p1
.end method
