.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->showErrorToast()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->showErrorToast()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$2;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method
