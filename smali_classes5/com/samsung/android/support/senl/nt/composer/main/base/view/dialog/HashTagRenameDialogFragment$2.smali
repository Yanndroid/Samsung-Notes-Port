.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

.field public final synthetic val$inputText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;->val$inputText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/HashTagRenameDialogPresenter;->rename(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
