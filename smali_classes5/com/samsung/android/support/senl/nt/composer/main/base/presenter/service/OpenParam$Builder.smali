.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    return-void
.end method


# virtual methods
.method public done()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    return-object v0
.end method

.method public setDocPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setDocPath(Ljava/lang/String;)V

    return-object p0
.end method

.method public setLockAccountGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setLockAccountGuid(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPageType(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setPageType(I)V

    return-object p0
.end method

.method public setPageWidth(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setPageWidth(I)V

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setUuid(Ljava/lang/String;)V

    return-object p0
.end method

.method public setWritingMode(I)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/spenwrapper/constants/WritingMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam$Builder;->mOpenParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/OpenParam;->setWritingMode(I)V

    return-object p0
.end method
