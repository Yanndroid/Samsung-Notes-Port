.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$Layouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabletLayouter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$Layouter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;)V

    return-void
.end method


# virtual methods
.method public resizeContainerToFitWidthOnly()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;->mItemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderVariable;->mThumbnailWidth:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout$TabletLayouter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/PageHolderLayout;->mThumbnailContainer:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateContainerRelativeLayoutRule(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public updateContainerRelativeLayoutRuleToFitWidth(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    return-void
.end method
