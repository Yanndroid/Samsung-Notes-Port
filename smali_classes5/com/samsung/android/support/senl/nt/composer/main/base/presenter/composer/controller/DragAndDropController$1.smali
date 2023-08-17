.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->executeDragAndDrop(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

.field public final synthetic val$dragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->val$dragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->showErrorToast()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSelectionAreaLongPressed#onSuccess# activity is stopped"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->getDropContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->getDropContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPastePosition()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PastePosition is error"

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->getDropContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)Landroid/content/ClipData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->getDropContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->val$dragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-static {v1, v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSelectionAreaLongPressed#DropContent is empty"

    goto :goto_0

    :cond_5
    :goto_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectionAreaLongPressed#onSuccess# activity is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;)V

    return-void
.end method
