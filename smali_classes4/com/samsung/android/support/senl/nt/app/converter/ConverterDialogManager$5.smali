.class Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$5;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$5;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->c(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$5;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->a(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
