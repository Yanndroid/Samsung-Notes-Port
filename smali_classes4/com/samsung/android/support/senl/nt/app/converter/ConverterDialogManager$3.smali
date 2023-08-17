.class Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showSaveConfirmDialog(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "ConverterDialogManager"

    const-string v0, "ConfirmDialog, cancel"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->e(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    return-void
.end method
