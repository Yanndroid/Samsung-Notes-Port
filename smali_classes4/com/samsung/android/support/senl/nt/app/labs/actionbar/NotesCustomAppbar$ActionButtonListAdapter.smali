.class Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionButtonListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public itemCount:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->b(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->itemCount:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->itemCount:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;I)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;->mActionButton:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;->b(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;)Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;

    iget p2, p2, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/ComposerOptionsMenu$MenuItem;->icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_appbar_action_button:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;-><init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonListAdapter;->itemCount:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
