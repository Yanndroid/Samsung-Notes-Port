.class public Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mComment:Ljava/lang/String;

.field private mCommentId:Ljava/lang/String;

.field private mCreatedTime:J

.field private mEmotionList:Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;

.field private mOwnerProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;JLcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mCommentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mComment:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mOwnerProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;

    iput-wide p4, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mCreatedTime:J

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mEmotionList:Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mCreatedTime:J

    return-wide v0
.end method

.method public getEmotionList()Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mEmotionList:Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionList;

    return-object v0
.end method

.method public getOwnerProfile()Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/Comment;->mOwnerProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;

    return-object v0
.end method
