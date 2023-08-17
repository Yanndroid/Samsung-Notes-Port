.class Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoundedDecoration"
.end annotation


# instance fields
.field public final mDivider:Landroid/graphics/drawable/Drawable;

.field public final mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->notes_simple_item_divider_bg:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/16 p2, 0xf

    invoke-virtual {v0, p2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->round_corner_color:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->access$000(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    if-gtz p3, :cond_6

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->access$100(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I

    move-result p3

    and-int/lit8 p3, p3, 0x20

    if-lez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_5

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v1, :cond_2

    const/4 v3, 0x1

    if-le p3, v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/16 v3, 0xf

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p3, -0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0xc

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->access$200(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I

    move-result v4

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-lez v4, :cond_4

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderCommonHolder;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderCommonHolder;->decorateRoundedCorner(II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-lez p3, :cond_6

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->access$300(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    if-gtz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->access$400(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I

    move-result p3

    and-int/lit8 p3, p3, 0x20

    if-gtz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;->access$500(Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;)I

    move-result p3

    and-int/lit8 p3, p3, 0x10

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$dimen;->folder_list_item_divider_margin_start_end:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView$RoundedDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
