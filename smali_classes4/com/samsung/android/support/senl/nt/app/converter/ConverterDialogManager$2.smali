.class Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showPasswordDialog(Ljava/lang/String;IZ)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ConverterDialogManager"

    const-string v1, "showPasswordDialog$onResult"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->a(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
