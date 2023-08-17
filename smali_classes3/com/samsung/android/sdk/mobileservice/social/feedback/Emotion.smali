.class public Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMOTION_TYPE_LIKE:I = 0x0

.field public static final EMOTION_TYPE_NONE:I = -0x1


# instance fields
.field private mCount:I

.field private mEmotionType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;->mEmotionType:I

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;->mCount:I

    return v0
.end method

.method public getEmotionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Emotion;->mEmotionType:I

    return v0
.end method
