.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mPrevX:F

.field private mPrevY:F

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;IILandroid/graphics/Rect;)V
    .locals 10

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->mPrevY:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->mPrevX:F

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;

    move-result-object v1

    iget v6, p4, Landroid/graphics/Rect;->left:I

    iget v7, p4, Landroid/graphics/Rect;->right:I

    iget v8, p4, Landroid/graphics/Rect;->top:I

    iget v9, p4, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->mPrevX:F

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->mPrevY:F

    invoke-static {v2, v0, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;FFFF)V

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->mPrevX:F

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->mPrevY:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter$FlingRunnable;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;)V

    :goto_0
    return-void
.end method
