.class Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->setStringValueCallback(Lcom/airbnb/lottie/value/LottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/LottieValueCallback<",
        "Lcom/airbnb/lottie/model/DocumentData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public final synthetic val$documentData:Lcom/airbnb/lottie/model/DocumentData;

.field public final synthetic val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

.field public final synthetic val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;Lcom/airbnb/lottie/value/LottieFrameInfo;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->this$0:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iput-object p4, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Lcom/airbnb/lottie/model/DocumentData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/LottieFrameInfo<",
            "Lcom/airbnb/lottie/model/DocumentData;",
            ">;)",
            "Lcom/airbnb/lottie/model/DocumentData;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartFrame()F

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndFrame()F

    move-result v2

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v3, v3, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v4, v4, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getLinearKeyframeProgress()F

    move-result v5

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v6

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/lottie/value/LottieFrameInfo;->set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/airbnb/lottie/value/LottieFrameInfo;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getInterpolatedKeyframeProgress()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getStartValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    iget-object v3, p1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iget v4, p1, Lcom/airbnb/lottie/model/DocumentData;->size:F

    iget-object v5, p1, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    iget v6, p1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iget v7, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    iget v8, p1, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    iget v9, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iget v10, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iget v11, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    iget-boolean v12, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    invoke-virtual/range {v1 .. v12}, Lcom/airbnb/lottie/model/DocumentData;->set(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V

    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    return-object p1
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p1

    return-object p1
.end method
