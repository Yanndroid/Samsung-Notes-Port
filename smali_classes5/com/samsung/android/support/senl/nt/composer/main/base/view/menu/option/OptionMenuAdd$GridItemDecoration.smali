.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridItemDecoration"
.end annotation


# instance fields
.field private final mBottomSpacing:I

.field private final mSideSpacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;->mBottomSpacing:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;->mSideSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;->mSideSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$GridItemDecoration;->mBottomSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
