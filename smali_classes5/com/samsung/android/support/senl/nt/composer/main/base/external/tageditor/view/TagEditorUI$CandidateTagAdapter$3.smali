.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->playTagAnimation(Landroid/view/View;Landroid/animation/AnimatorSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

.field public final synthetic val$lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;->val$lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;->val$lottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter$3;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    return-void
.end method
