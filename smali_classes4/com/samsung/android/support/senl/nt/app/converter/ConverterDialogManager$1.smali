.class Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showProgressDialog(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string p1, "ConverterDialogManager"

    const-string v0, "ProgressDialog, cancel"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->b(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->cancel(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->e(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    return-void
.end method
