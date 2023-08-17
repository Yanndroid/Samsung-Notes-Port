.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->setExpandedStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

.field public final synthetic val$folderUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->val$folderUuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->getDataUpdateType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->val$folderUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->val$folderUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/controller/ReorderItemController$Contract;->setExpandedStatus(ZLjava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
