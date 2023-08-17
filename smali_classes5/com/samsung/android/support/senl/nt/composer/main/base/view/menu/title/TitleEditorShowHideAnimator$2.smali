.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$2;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$TitleEditorAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->animate(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$TitleEditorAnimatorListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/a;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$TitleEditorAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)V

    return-void
.end method
