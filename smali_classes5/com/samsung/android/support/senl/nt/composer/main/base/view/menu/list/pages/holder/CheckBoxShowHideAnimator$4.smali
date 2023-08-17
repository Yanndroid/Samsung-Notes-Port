.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->showAnimation(Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;

.field public final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private setLastState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;->val$checkBox:Landroid/widget/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;->setLastState()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$4;->setLastState()V

    return-void
.end method
