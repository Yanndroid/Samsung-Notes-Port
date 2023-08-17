.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
    }
.end annotation


# instance fields
.field private mDocPath:Ljava/lang/String;

.field private mLockAccountGuid:Ljava/lang/String;

.field private mPageType:I

.field private mPageWidth:I

.field private mUuid:Ljava/lang/String;

.field private mWritingMode:I
    .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mWritingMode:I

    return-void
.end method


# virtual methods
.method public getDocPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mDocPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLockAccountGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mLockAccountGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mPageType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    :goto_0
    return-object v0
.end method

.method public getPageWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mPageWidth:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWritingMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mWritingMode:I

    return v0
.end method

.method public makeDocRepository(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getDocPath()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const-string v3, ""

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenDocumentRepositoryFactory;->createWordDocRepository()Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getPageWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->setPageWidth(I)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;->setPageMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/SpenWordDocRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getLockAccountGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setLockAccountGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->getWritingMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setWritingMode(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    return-object p1
.end method

.method public setDocPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mDocPath:Ljava/lang/String;

    return-void
.end method

.method public setLockAccountGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mLockAccountGuid:Ljava/lang/String;

    return-void
.end method

.method public setPageType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mPageType:I

    return-void
.end method

.method public setPageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mPageWidth:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public setWritingMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->mWritingMode:I

    return-void
.end method
