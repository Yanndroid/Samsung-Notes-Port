.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$VerticalSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalSpaceItemDecoration"
.end annotation


# instance fields
.field private final mVerticalSpaceHeight:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$VerticalSpaceItemDecoration;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$VerticalSpaceItemDecoration;->mVerticalSpaceHeight:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eq p2, p3, :cond_0

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMorePopup$VerticalSpaceItemDecoration;->mVerticalSpaceHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
