.class public Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;
    }
.end annotation


# instance fields
.field private mAssetName:Ljava/lang/String;

.field private final mMessageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->mMessageInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMessageInfo(Ljava/lang/String;IFFFJJJJZ)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;
    .locals 5

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->mMessageInfos:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;-><init>()V

    move-object v3, p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setTag(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move v3, p2

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setStringRes(I)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move v3, p3

    invoke-virtual {v2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setStartRatio(F)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move v3, p4

    invoke-virtual {v2, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setTopRatio(F)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move v3, p5

    invoke-virtual {v2, p5}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setEndRatio(F)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move-wide v3, p6

    invoke-virtual {v2, p6, p7}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setShowDelay(J)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move-wide v3, p8

    invoke-virtual {v2, p8, p9}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setShowDuration(J)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move-wide v3, p10

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setDismissDelay(J)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move-wide/from16 v3, p12

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setDismissDuration(J)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    move/from16 v3, p14

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;->setIsLeftSideOfLottie(Z)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->mAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource$MessageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->mMessageInfos:Ljava/util/List;

    return-object v0
.end method

.method public setAssetName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieResource;->mAssetName:Ljava/lang/String;

    return-object p0
.end method
