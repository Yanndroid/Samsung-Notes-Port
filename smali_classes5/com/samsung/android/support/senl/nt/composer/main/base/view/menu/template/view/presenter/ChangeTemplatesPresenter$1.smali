.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->getDownloadDefaultPdfCallback(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDefaultTemplatePdf#onError# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;->getErrorCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "createDefaultTemplatePdf#onSuccess# "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->initItems(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->updateAllItems()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V

    return-void
.end method
