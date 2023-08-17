.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

.field public tipCardCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->tipCardCount:I

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->notifyDataChanged()V

    return-void
.end method

.method private notifyDataChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->putHolderInfoMap(IZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->sortTopHolderDisplayList(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataSetChanged# tipCardIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", prevTipCardCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->tipCardCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", curTipCardCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TipCardHelper"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->tipCardCount:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->q(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;I)V

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->tipCardCount:I

    return-void

    :cond_3
    if-nez v2, :cond_4

    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->tipCardCount:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->setNoNotesLayoutVisibility()V

    return-void
.end method


# virtual methods
.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/c;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->notifyDataChanged()V

    :goto_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
