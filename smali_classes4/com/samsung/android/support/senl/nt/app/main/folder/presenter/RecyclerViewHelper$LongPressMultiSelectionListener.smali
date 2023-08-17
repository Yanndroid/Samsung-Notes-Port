.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;
.super Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LongPressMultiSelectionListener"
.end annotation


# instance fields
.field public mIsTouchMoved:Z

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->mIsTouchMoved:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)V

    return-void
.end method


# virtual methods
.method public isTouchMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->mIsTouchMoved:Z

    return v0
.end method

.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->getModeIndex()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SeslLongPressMultiSelectionListener# onItemSelected position : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "RecyclerViewHelper"

    invoke-static {p4, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    if-nez p1, :cond_1

    const-string p1, "holder is null!!"

    invoke-static {p4, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p4

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->selectedItemPositionList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p5

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    invoke-virtual {p4, p5}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    iget-object p5, p0, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->selectedItemPositionList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p4, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->toggleCheckBox(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;Z)V

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->mIsTouchMoved:Z

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;->setLongPressed(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->showBottomNavigation()V

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->mIsTouchMoved:Z

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView$LongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$LongPressMultiSelectionListener;->mIsTouchMoved:Z

    return-void
.end method
