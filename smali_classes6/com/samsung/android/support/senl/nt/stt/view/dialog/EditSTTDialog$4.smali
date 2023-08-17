.class Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$4;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->b(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    const-string v0, "EditSTTDialog"

    const-string v1, "onResume() activity is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/stt/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
