.class public Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandoffDataBuilder"
.end annotation


# instance fields
.field private final mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    return-object v0
.end method

.method public setActionType(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActionType(Ljava/lang/String;)V

    return-object p0
.end method

.method public setActivityType(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActivityType(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setCategoryUuid(Ljava/lang/String;)V

    return-object p0
.end method

.method public setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setFolderUuid(Ljava/lang/String;)V

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setGroupId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSearchText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->serSearchText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectedTags(Ljava/util/Set;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setSelectedTags(Ljava/util/Set;)V

    return-object p0
.end method

.method public setSpaceId(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setSpaceId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSyncEnabledOnSender(Z)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->mMainHandoffData:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->a(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;Z)V

    return-object p0
.end method
