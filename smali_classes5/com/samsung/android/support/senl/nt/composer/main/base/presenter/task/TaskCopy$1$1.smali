.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;

.field public final synthetic val$finalResult:Landroid/util/Pair;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;Landroid/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1$1;->val$finalResult:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1$1;->val$finalResult:Landroid/util/Pair;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;Landroid/util/Pair;Landroid/content/Context;)V

    return-void
.end method
