.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->convertFromWidget(Landroid/content/Intent;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated()V
    .locals 2

    const-string v0, "DocOpenTriggerActivity"

    const-string v1, "convertFromWidget#onCreated#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->m(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    return-void
.end method

.method public onFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string p2, "convertFromWidget#onFailed#"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertFromWidget#onPreFailed# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;->getStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string p2, "convertFromWidget#onSuccess#"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method
