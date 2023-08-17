.class public Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;,
        Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;,
        Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;,
        Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoteListAdapter"


# instance fields
.field private mHeightListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDragListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;",
            "Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mNoteList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mStartDragListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;

    iput-object p3, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mHeightListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mHeightListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mNoteList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mStartDragListener:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mNoteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNoteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->onBindViewHolder(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->mNoteList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "NoteListAdapter"

    const-string p2, "onBindViewHolder#"

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getRecommendTitleText(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$1;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->setItemRemoveClickListener(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemRemoveClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->getItemCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mReorder:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p2, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mReorder:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$2;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;->mReorder:Landroid/widget/ImageButton;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_setting_control_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$NoteListHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
