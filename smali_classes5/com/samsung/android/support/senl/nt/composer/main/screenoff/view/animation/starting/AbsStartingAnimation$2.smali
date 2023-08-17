.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method
