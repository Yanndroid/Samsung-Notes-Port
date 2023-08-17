.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;->initAnimation(I)V
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

.field public final synthetic val$animationColor:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$3;->val$animationColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Landroid/graphics/ColorFilter;",
            ">;)",
            "Landroid/graphics/ColorFilter;"
        }
    .end annotation

    new-instance p1, Lcom/airbnb/lottie/SimpleColorFilter;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$3;->val$animationColor:I

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/AbsStartingAnimation$3;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    move-result-object p1

    return-object p1
.end method
