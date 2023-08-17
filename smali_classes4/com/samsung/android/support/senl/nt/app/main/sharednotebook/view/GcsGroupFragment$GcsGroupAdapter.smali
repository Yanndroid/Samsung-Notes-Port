.class Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GcsGroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;-><init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V

    return-void
.end method

.method private swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "GcsGroupFragment"

    const-string v1, "swapCursor "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-object v0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cursor is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "GcsGroupFragment"

    const-string p2, "GcsGroupAdapter#onBindViewHolder Cursor is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cursor is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result p3

    const-string v0, "GcsGroupFragment"

    if-eqz p3, :cond_0

    const-string p1, "GcsGroupAdapter#onBindViewHolder Cursor is closed."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {p3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;->decorate(Landroid/database/Cursor;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GcsGroupAdapter#onBindViewHolder IllegalStateException : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->gcs_group_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$GcsGroupAdapter;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder$GcsGroupHolderContract;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder$GcsGroupHolderContract;)V

    return-object p2
.end method
