.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->getAddContentsCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_added_to_the_note_being_edited:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$4;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)V

    return-void
.end method
