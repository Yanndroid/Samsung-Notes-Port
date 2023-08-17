.class Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->updateContainedButtonLayout(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$buttonCount:I

.field public final synthetic val$buttons:[Landroid/view/View;

.field public final synthetic val$container:Landroid/view/View;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>([Landroid/view/View;ILandroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttons:[Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttonCount:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttons:[Landroid/view/View;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttonCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttons:[Landroid/view/View;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    move v3, v2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-double v6, v3

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    :goto_2
    mul-double/2addr v6, v4

    double-to-int v3, v6

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$container:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttons:[Landroid/view/View;

    array-length v5, v4

    move v6, v1

    move v7, v6

    :goto_4
    if-ge v6, v5, :cond_4

    aget-object v8, v4, v6

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->a(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_5
    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttonCount:I

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil$1;->val$buttons:[Landroid/view/View;

    aget-object v4, v3, v1

    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    aget-object v4, v0, v1

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method
