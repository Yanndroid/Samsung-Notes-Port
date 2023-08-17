.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->sendMessage(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
