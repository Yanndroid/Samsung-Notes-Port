.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->settings_recyclerview_divider_bg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10
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

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->handwriting_recognition_recyclerview_divider_padding_start_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, -0x1

    :goto_0
    if-ge v0, p3, :cond_b

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v4, v3, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$dimen;->noteslist_recycler_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_2
    const/16 v8, 0xc

    const/4 v9, 0x3

    if-eqz v6, :cond_8

    if-ne v6, v9, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_5

    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v7

    :goto_2
    if-eq v4, v7, :cond_7

    if-ne v4, v9, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v4, v8}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v4, v3, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v8}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v4, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_9
    if-eqz v5, :cond_a

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v9}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/view/HWRecyclerviewDividerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v3, v5, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method
