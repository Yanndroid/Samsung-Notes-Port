.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/ConvertDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IConvertDialog;->onBackPressed()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
