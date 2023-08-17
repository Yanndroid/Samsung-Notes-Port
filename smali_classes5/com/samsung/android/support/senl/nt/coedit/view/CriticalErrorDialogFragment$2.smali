.class Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;->a(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;)Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;->a(Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;)Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$Contract;->onClickCloseComposer()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/view/CriticalErrorDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
