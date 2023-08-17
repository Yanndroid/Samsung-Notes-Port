.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

.field public final synthetic val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v0, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->indexOfDefaultDisplayData(I)I

    move-result p1

    sub-int/2addr p1, v2

    if-ltz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/4 v6, 0x0

    if-eq v3, v4, :cond_a

    const/4 v4, 0x4

    const/4 v7, 0x0

    if-eq v3, v4, :cond_8

    if-eq v3, v1, :cond_3

    const/4 p2, 0x6

    if-eq v3, p2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result p2

    if-gt p2, v5, :cond_c

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p2, v6, p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;ZLandroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result v1

    if-gt v1, v5, :cond_5

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedFoldersCount()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    const/16 v3, 0x6e

    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->performHapticFeedback(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;ZLandroid/view/View;Ljava/lang/Runnable;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->indexOfDisplayData(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_7

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getNotesSpan()I

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v2

    :goto_0
    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->getDragAndDropScrollPosition(III)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;->smoothScrollToPosition(ILandroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1, v6, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedDataCount()I

    move-result p2

    if-lez p2, :cond_9

    move v6, v2

    :cond_9
    invoke-interface {p1, v6}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->showBottomNavigation(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;Lcom/samsung/android/support/senl/nt/app/main/common/view/NumberedBadgeShadowBuilder;)V

    goto :goto_1

    :cond_a
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->val$holderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getHolderType()I

    move-result p2

    if-gt p2, v5, :cond_d

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->getCheckedFoldersCount()I

    move-result p2

    if-gtz p2, :cond_d

    :cond_b
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper$4;Ljava/lang/String;)V

    invoke-static {p2, v6, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DragAndDropHelper;ZLandroid/view/View;Ljava/lang/Runnable;)V

    const-string p1, "DragAndDropHelper"

    const-string p2, "List# drag_drop"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    return v2

    :cond_d
    return v6
.end method
