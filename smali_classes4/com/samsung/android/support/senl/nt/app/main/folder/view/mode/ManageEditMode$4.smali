.class Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->scrollToBottomHolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DataMapper;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLongPressReleased# lastSelectedItemPosition : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lastVisibleItemPosition : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ManageEditMode"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(I)V

    :cond_0
    return-void
.end method
