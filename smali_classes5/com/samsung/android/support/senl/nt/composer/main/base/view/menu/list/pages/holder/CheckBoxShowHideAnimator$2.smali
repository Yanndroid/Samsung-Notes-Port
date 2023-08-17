.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;->updateCheckBoxDim(ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;

.field public final synthetic val$checkBox:Landroid/widget/CheckBox;

.field public final synthetic val$dimView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;->val$dimView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;->val$dimView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckBoxShowHideAnimator$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/holder/CheckableRelativeLayout;->setChecked(Z)V

    return-void
.end method
