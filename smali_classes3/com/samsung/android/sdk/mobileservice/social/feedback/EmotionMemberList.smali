.class public Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCommentId:Ljava/lang/String;

.field private mContentId:Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mEmotionMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;",
            ">;"
        }
    .end annotation
.end field

.field private mNextMemberGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mContentId:Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mCommentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mNextMemberGuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mEmotionMemberList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mContentId:Lcom/samsung/android/sdk/mobileservice/social/feedback/ContentId;

    return-object v0
.end method

.method public getEmotionMemberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mEmotionMemberList:Ljava/util/List;

    return-object v0
.end method

.method public getNextMemberGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;->mNextMemberGuid:Ljava/lang/String;

    return-object v0
.end method
