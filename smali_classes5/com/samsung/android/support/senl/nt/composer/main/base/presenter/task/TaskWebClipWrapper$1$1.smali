.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$ResultValues;)V

    return-void
.end method
