.class public Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult;


# instance fields
.field private mRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

.field private mResult:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->FINISHED:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectResult$Result;->getValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;->mResult:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;->setResult(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;->setRepository(Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    return-void
.end method


# virtual methods
.method public getRepository()Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;->mRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;->mResult:I

    return v0
.end method

.method public setRepository(Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;->mRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResult;->mResult:I

    return-void
.end method
