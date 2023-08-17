.class Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnApplyWindowInsetsListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$OnApplyWindowInsetsListener;->this$0:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;Lcom/samsung/android/support/senl/cm/base/framework/view/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$OnApplyWindowInsetsListener;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$OnApplyWindowInsetsListener;->this$0:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->a(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutRectsListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p1, 0x0

    aget v4, v2, p1

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->b(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge p1, v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutRectsListener;->onChangeBoundingRects(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method
