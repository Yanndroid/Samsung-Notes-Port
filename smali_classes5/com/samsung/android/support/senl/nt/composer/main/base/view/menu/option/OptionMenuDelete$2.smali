.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;->showDeleteConfirmDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

.field public final synthetic val$mode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isInAppCollaborationMode()Z

    move-result p2

    const-string v0, "7032"

    if-eqz p2, :cond_0

    const-string p2, "672"

    goto :goto_0

    :cond_0
    const-string p2, "703"

    :goto_0
    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete$2;->val$mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickDeleteBtn(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
