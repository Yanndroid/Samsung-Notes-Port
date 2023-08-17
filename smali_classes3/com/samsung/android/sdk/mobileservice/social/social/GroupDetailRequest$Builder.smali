.class public Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private mFeatureId:I

.field private mFeatureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupId:Ljava/lang/String;

.field private mInvitable:Z

.field private mMaxGroupMemberCount:I

.field private mSpaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mSpaceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mInvitable:Z

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureId:I

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mSpaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mInvitable:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mSpaceName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    return p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mInvitable:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureId:I

    return p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mGroupId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GroupId should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AppId should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeatureId(I)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureId:I

    return-object p0
.end method

.method public setFeatureId(Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    return-object p0
.end method

.method public setFeatureIdList(Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mFeatureIdList:Ljava/util/List;

    return-object p0
.end method

.method public setInvitable(Z)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mInvitable:Z

    return-object p0
.end method

.method public setMaxGroupMemberCount(I)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mMaxGroupMemberCount:I

    return-object p0
.end method

.method public setSpaceName(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->mSpaceName:Ljava/lang/String;

    return-object p0
.end method
