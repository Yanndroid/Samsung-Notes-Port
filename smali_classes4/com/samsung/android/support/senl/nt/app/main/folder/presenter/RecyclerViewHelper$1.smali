.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedItemPosition(Ljava/util/ArrayList;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-gtz p2, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p3

    add-int/lit8 p4, p2, -0x1

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v0, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p3

    if-ne p3, v1, :cond_4

    :cond_2
    if-gt p2, v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->setMode(I)Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayDataList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v1, :cond_5

    return-void

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OnPenMultiSelectionListener# onSelectedItemPosition list size : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RecyclerViewHelper"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDisplayData(I)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p3

    if-nez p3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    const-string p4, "addFolder:///"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    sget-object p4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    goto :goto_1

    :cond_8
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->isCheckedItem(Ljava/lang/String;)Z

    move-result p4

    xor-int/2addr p4, v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$IPresenter;->toggleCheckBox(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;

    if-nez p2, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->toggleCheckBox(Z)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/RecyclerViewHelper;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    goto :goto_1

    :cond_a
    return-void
.end method
