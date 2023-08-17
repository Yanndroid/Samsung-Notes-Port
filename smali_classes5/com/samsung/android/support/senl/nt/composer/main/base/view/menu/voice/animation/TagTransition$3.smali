.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimatorByObjectAnimator(Landroid/view/View;IIIIIIIIIIIII)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

.field public final synthetic val$viewBounds:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$3;->val$viewBounds:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createLinkChasingAnimator end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$3;->val$viewBounds:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$ViewBounds;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TagTransition"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
