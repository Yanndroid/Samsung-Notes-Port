.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach Menu Show#addImage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->val$type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->blockToShow(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->val$type:I

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->show(Landroidx/fragment/app/Fragment;Landroid/view/View;IZLcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$1;->val$type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;->blockToShow(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
