.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->expandRecordMenu(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

.field public final synthetic val$btnMenuOpen:Landroid/view/View;

.field public final synthetic val$voiceMenu:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$voiceMenu:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$btnMenuOpen:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$TransitionListenerAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/a;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$voiceMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;Landroid/view/View;Z)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$voiceMenu:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;Landroid/view/View;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$btnMenuOpen:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$btnMenuOpen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    neg-int p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$btnMenuOpen:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->val$btnMenuOpen:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
