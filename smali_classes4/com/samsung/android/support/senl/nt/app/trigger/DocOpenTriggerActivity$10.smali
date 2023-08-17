.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openPDF(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleError(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->showErrorToast(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string v0, "download fail"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string v0, "openPDF# result is null"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->changeActivityFlags()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->isOpenReader()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->FEATURE_ENABLED_MANAGE_EXTERNAL_STORAGE:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->handleError(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->n(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x1001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1c080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-class v2, Lcom/samsung/android/support/senl/nt/app/trigger/PdfOnlyOpenTriggerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->getDownloadedPdfPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pdf_open_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openPDF, openReader, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finishWithErrorToast(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->handleError(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->val$uri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->getDownloadedPdfPath()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getOpenPDFIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string v0, "openPDF"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openPDF, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finishWithErrorToast(Ljava/lang/String;)V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method
