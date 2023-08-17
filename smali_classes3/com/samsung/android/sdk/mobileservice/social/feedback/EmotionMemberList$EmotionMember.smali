.class public Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmotionMember"
.end annotation


# instance fields
.field private mEmotionType:I

.field private mUpdateTime:J

.field private mUserProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;->mUserProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;

    iput-wide p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;->mUpdateTime:J

    iput p4, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;->mEmotionType:I

    return-void
.end method


# virtual methods
.method public getEmotionType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;->mEmotionType:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;->mUpdateTime:J

    return-wide v0
.end method

.method public getUserProfile()Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/EmotionMemberList$EmotionMember;->mUserProfile:Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;

    return-object v0
.end method
