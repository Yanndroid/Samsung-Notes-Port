.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<",
        "Landroid/graphics/ColorFilter;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;

.field public final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Landroid/graphics/ColorFilter;",
            ">;)",
            "Landroid/graphics/ColorFilter;"
        }
    .end annotation

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3$1;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3$1;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    move-result-object p1

    return-object p1
.end method
