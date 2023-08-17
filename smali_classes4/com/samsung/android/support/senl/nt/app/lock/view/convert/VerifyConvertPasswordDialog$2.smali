.class Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "715"

    const-string p2, "7152"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->b(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->b(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;)Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p1, p2, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
