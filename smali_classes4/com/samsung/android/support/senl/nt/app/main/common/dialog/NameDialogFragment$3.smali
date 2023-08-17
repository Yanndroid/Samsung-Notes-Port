.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    const/16 v1, 0x42

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->d(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V

    :cond_1
    return v0

    :cond_2
    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
