.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

.field public final synthetic val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

.field public final synthetic val$heightPixels:I

.field public final synthetic val$mgr:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic val$viewType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;ILcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Landroidx/recyclerview/widget/LinearLayoutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$viewType:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$mgr:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$heightPixels:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$viewType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const-string v5, "RecyclerViewHelper"

    const/4 v6, 0x0

    if-eq v4, v2, :cond_b

    if-eq v4, v1, :cond_8

    const/4 v1, 0x4

    if-eq v4, v1, :cond_7

    const/4 v1, 0x5

    if-eq v4, v1, :cond_3

    const/4 p1, 0x6

    if-eq v4, p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p2

    invoke-interface {v3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setSelectedFolder(Z)V

    :cond_2
    const-string p1, "drag_exited"

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v1, v4, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setSelectedFolder(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$viewType:I

    const/16 v7, 0x3f2

    if-eq v4, v7, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v7

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v4, v7, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->setExpandedStatus(ZLjava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Landroid/view/View;Landroid/view/DragEvent;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$mgr:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$mgr:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v3, p1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$heightPixels:I

    int-to-double v7, v1

    const-wide v9, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v7, v9

    cmpg-double v3, v3, v7

    if-gez v3, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    sub-int/2addr p2, v2

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->smoothScrollToPositionForDrawer(I)V

    goto :goto_1

    :cond_5
    int-to-double p1, p1

    int-to-double v3, v1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v6

    cmpl-double p1, p1, v3

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    add-int/2addr v0, v2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_6
    :goto_1
    const-string p1, "drag_entered"

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Z)V

    const-string p1, "drag_drop_ended"

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setBackground(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->val$folderHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setSelectedFolder(Z)V

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object v3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {v3, p1, v4, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getAnchorView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->showMoveFolderConfirmDialog(Ljava/lang/String;I)V

    :cond_9
    const-string p1, "drag_drop"

    goto :goto_2

    :cond_a
    return v6

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1, v6}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Z)V

    const-string p1, "drag_drop_started"

    :goto_2
    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v2
.end method
