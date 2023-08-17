.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$ILayoutHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vertical"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX(F)F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    return p1
.end method

.method public getY(F)F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public updateLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_add_page_text_side_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager$Vertical;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
