.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->getImageStorageDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$ResultValues;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;)Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectImage;)V

    return-void
.end method
