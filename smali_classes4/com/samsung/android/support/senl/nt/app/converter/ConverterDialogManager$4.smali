.class Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;
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

.field public final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "ConverterDialogManager"

    const-string v0, "ConfirmDialog#, save"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$4;->val$filePath:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->f(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
