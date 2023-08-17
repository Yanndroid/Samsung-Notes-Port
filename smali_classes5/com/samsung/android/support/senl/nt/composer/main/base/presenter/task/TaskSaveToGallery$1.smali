.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
