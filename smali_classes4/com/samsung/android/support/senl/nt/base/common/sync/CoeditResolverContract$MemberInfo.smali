.class public Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberInfo"
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mExpireTime:J

.field private mMemberId:Ljava/lang/String;

.field private mMemberName:Ljava/lang/String;

.field private mOptionalId:Ljava/lang/String;

.field private mStatus:I

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mMemberId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mMemberName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mAuthority:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mUri:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mExpireTime:J

    iput p7, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mStatus:I

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mOptionalId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mExpireTime:J

    return-wide v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mMemberName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mOptionalId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mStatus:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public hasReadAuthority()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasWriteAuthority()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mExpireTime:J

    return-void
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mMemberId:Ljava/lang/String;

    return-void
.end method

.method public setMemberName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mMemberName:Ljava/lang/String;

    return-void
.end method

.method public setOptionalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mOptionalId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mStatus:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->mUri:Ljava/lang/String;

    return-void
.end method
