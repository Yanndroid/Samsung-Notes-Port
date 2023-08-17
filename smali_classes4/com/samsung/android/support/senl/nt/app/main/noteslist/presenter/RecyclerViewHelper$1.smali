.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedItemPosition(Ljava/util/ArrayList;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayListSize([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPenMultiSelectionListener# onSelectedItemPosition list size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerViewHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->setEditMode(Z)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSubFoldersSpan()I

    move-result v0

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-float p4, p4

    div-float/2addr p4, p2

    mul-float/2addr p4, v0

    float-to-int p2, p4

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPickEditMode(I)Z

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    const/16 v3, 0x10

    const/16 v4, 0x20

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getCommonDisplayData(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->type:I

    if-ne v2, v4, :cond_6

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedDimedNotes(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->toggleCheckedNote(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    goto :goto_0

    :cond_6
    if-gt v2, v3, :cond_1

    if-nez v0, :cond_1

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move v2, p3

    :goto_1
    if-gt v2, p2, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_8

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->toggleCheckedFolder(Ljava/lang/String;)V

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v1

    if-ne v1, v4, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;

    move-result-object v1

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/NotesModel;->isUuidInCheckedDimedNotes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result v1

    if-gt v1, v3, :cond_1

    move v1, p3

    :goto_3
    if-gt v1, p2, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderHolderInfo(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->updateSelectedNoteCount()V

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isGcsSpaceMode(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->hasHolderInfo(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    const-wide/16 p2, -0x10

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;J)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;

    const-wide/16 p2, -0xf

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/RecyclerViewHelper;J)V

    :cond_c
    :goto_4
    return-void
.end method
