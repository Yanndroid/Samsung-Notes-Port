.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->insertImage(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskDownloadImage#onError# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->deleteFileForTakePicture()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->clear()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;->showErrorToast()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskDownloadImage#onSuccess# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter;)Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->clear()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;->showErrorToast()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/AttachMenuPresenter$3;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;)V

    return-void
.end method
