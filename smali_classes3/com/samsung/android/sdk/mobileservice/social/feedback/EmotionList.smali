.class public Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEmotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;",
            ">;"
        }
    .end annotation
.end field

.field private mMyEmotionType:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;->mMyEmotionType:I

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;->mEmotions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEmotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;->mEmotions:Ljava/util/List;

    return-object v0
.end method

.method public getMyEmotionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;->mMyEmotionType:I

    return v0
.end method
