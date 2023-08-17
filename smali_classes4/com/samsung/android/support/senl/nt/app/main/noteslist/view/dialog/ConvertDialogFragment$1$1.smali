.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "764"

    const-string v0, "7910"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;->onConfirm()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
