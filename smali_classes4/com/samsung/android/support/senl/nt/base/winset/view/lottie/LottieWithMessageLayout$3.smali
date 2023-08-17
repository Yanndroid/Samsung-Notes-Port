.class Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->animateMessageView(Landroid/widget/TextView;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;

.field public final synthetic val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

.field public final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget-wide v0, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->dismissDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateMessageView# dismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LottieWithMessageLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget-wide v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->dismissDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;->val$messageInfo:Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    iget-wide v1, v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->dismissDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
