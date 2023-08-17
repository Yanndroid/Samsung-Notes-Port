.class Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteListHolder"
.end annotation


# instance fields
.field public mDelete:Landroid/widget/ImageButton;

.field private mRemoveClickListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;

.field public mReorder:Landroid/widget/ImageButton;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->list_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mDelete:Landroid/widget/ImageButton;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->list_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->list_reorder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mReorder:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mRemoveClickListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mRemoveClickListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;->onItemRemoveClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setItemRemoveClickListener(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mRemoveClickListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;

    return-void
.end method
