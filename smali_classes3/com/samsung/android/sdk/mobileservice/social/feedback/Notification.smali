.class public Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static FEEDBACK_TYPE_COMMENT:I = 0x1

.field public static FEEDBACK_TYPE_EMOTION:I = 0x2


# instance fields
.field private mComment:Ljava/lang/String;

.field private mCommentId:Ljava/lang/String;

.field private mContentId:Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mEmotionType:I

.field private mFeedbackType:I

.field private mNotificationId:Ljava/lang/String;

.field private mSenderProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;

.field private mTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;Ljava/lang/String;ILcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "I",
            "Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mContentId:Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mNotificationId:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mFeedbackType:I

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mSenderProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mCommentId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mComment:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mEmotionType:I

    iput-wide p8, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mContentId:Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;

    return-object v0
.end method

.method public getEmotionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mEmotionType:I

    return v0
.end method

.method public getFeedbackType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mFeedbackType:I

    return v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mNotificationId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderProfile()Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mSenderProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Notification;->mTimestamp:J

    return-wide v0
.end method
