.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->moveFail(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$3;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$3;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->isSkippedDataSetChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$3;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move fail IllegalStateException# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReorderItemController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
