.class Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->setHeightUpdateListener(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

.field public final synthetic val$height:I

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;->val$height:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar$12;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
