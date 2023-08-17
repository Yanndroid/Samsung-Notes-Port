.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->executeTaskShare(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
