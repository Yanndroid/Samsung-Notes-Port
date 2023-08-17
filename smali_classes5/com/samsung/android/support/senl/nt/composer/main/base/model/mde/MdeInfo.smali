.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$ObserverAdapter;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;
    }
.end annotation


# static fields
.field public static final PERMISSION_READ:Ljava/lang/String; = "R"

.field public static final PERMISSION_WRITE:Ljava/lang/String; = "R/W"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountType:I

.field private mCoeditMemberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatorName:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mIsBanished:Z

.field private mIsReadOnly:Z

.field private mIsStandAlone:Z

.field private mLeaderId:Ljava/lang/String;

.field private mMyId:Ljava/lang/String;

.field private final mObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerId:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;

.field private mSpaceId:Ljava/lang/String;

.field private mSpaceName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MdeInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mObserverList:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mCreatorName:Ljava/lang/String;

    return-void
.end method

.method private setPermission(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsReadOnly:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->TAG:Ljava/lang/String;

    const-string v0, "setPermission# read only"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPermission# empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mPermission:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mPermission:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mObserverList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;->onPermissionChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updatePermission()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mCoeditMemberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mMyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setPermission(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAccountType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mAccountType:I

    return v0
.end method

.method public getCoeditMemberList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mCoeditMemberList:Ljava/util/List;

    return-object v0
.end method

.method public getCreatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mCreatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mLeaderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mMyId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mOwnerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mSpaceName:Ljava/lang/String;

    return-object v0
.end method

.method public hasWritePermission()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mPermission:Ljava/lang/String;

    const-string v1, "R/W"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBanished(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsBanished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mMyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsBanished:Z

    return v1
.end method

.method public isCreator()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mAccountType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFixedReadPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsReadOnly:Z

    return v0
.end method

.method public isLeader()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mMyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mMyId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->getLeaderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMde()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mAccountType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandAlone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsStandAlone:Z

    return v0
.end method

.method public setAccountType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mAccountType:I

    return-void
.end method

.method public setCoeditMemberList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoeditMemberList# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mCoeditMemberList:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mAccountType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->updatePermission()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;->onCoeditMemberListChanged(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setCreatorName(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->TAG:Ljava/lang/String;

    const-string v1, "setCreatorName#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mCreatorName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;->onCreatorNameChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mSpaceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mGroupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mOwnerId:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mAccountType:I

    const/4 p1, 0x2

    if-ne p4, p1, :cond_0

    const-string p1, "R"

    goto :goto_0

    :cond_0
    const-string p1, "R/W"

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mPermission:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mLeaderId:Ljava/lang/String;

    return-void
.end method

.method public setFixedReadPermission(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsReadOnly:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedReadPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "R"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->setPermission(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsReadOnly:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsReadOnly:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->updatePermission()V

    :goto_0
    return-void
.end method

.method public setLeaderId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mLeaderId:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mLeaderId:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mLeaderId:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mObserverList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$Observer;->onLeaderChanged()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setMyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mMyId:Ljava/lang/String;

    return-void
.end method

.method public setSpaceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mSpaceName:Ljava/lang/String;

    return-void
.end method

.method public setStandAlone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->mIsStandAlone:Z

    return-void
.end method
