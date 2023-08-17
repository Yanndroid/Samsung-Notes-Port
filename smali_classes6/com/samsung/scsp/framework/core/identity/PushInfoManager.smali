.class public Lcom/samsung/scsp/framework/core/identity/PushInfoManager;
.super Lcom/samsung/scsp/framework/core/identity/InfoManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/scsp/framework/core/identity/InfoManager<",
        "Lcom/samsung/scsp/framework/core/identity/PushInfoList;",
        ">;"
    }
.end annotation


# instance fields
.field private final logger:Lcom/samsung/scsp/error/Logger;

.field private final updateApi:Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/scsp/framework/core/identity/InfoManager;-><init>()V

    const-string v0, "PushInfoManager"

    invoke-static {v0}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->logger:Lcom/samsung/scsp/error/Logger;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->updateApi:Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->lambda$updateCache$1(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/scsp/framework/core/identity/PushInfo;Lcom/samsung/scsp/framework/core/identity/PushInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->lambda$make$0(Lcom/samsung/scsp/framework/core/identity/PushInfo;Lcom/samsung/scsp/framework/core/identity/PushInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$make$0(Lcom/samsung/scsp/framework/core/identity/PushInfo;Lcom/samsung/scsp/framework/core/identity/PushInfo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/identity/PushInfo;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/identity/PushInfo;->getType()Ljava/lang/String;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateCache$1(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;->toJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->make(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->updateApi:Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;->update(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->updateCache(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)V

    :cond_0
    return v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    invoke-virtual {p0, p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->accept(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Z

    move-result p1

    return p1
.end method

.method public make(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Lcom/samsung/scsp/framework/core/identity/PushInfoList;
    .locals 8
    .param p1    # Lcom/samsung/scsp/framework/core/identity/PushInfoList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->pushInfos:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {v0}, Lcom/samsung/scsp/common/PreferenceItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/scsp/framework/core/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    invoke-direct {v1, v0}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;->getPushInfoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;->getPushInfoList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/scsp/framework/core/identity/PushInfo;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/scsp/framework/core/identity/PushInfo;

    invoke-virtual {v5}, Lcom/samsung/scsp/framework/core/identity/PushInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/scsp/framework/core/identity/PushInfo;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/scsp/framework/core/identity/PushInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/scsp/framework/core/identity/PushInfo;->equalsValue(Lcom/samsung/scsp/framework/core/identity/PushInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/samsung/scsp/framework/core/identity/g;

    invoke-direct {v4, v3}, Lcom/samsung/scsp/framework/core/identity/g;-><init>(Lcom/samsung/scsp/framework/core/identity/PushInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance p1, Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    invoke-direct {p1, v1}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic make(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    invoke-virtual {p0, p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->make(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    move-result-object p1

    return-object p1
.end method

.method public updateCache(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)V
    .locals 2
    .param p1    # Lcom/samsung/scsp/framework/core/identity/PushInfoList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->logger:Lcom/samsung/scsp/error/Logger;

    new-instance v1, Lcom/samsung/scsp/framework/core/identity/f;

    invoke-direct {v1, p1}, Lcom/samsung/scsp/framework/core/identity/f;-><init>(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)V

    invoke-virtual {v0, v1}, Lcom/samsung/scsp/error/Logger;->d(Lcom/samsung/scsp/framework/core/common/Supplier;)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->pushInfos:Lcom/samsung/scsp/common/PreferenceItem;

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoList;->toJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/scsp/common/PreferenceItem;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updateCache(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/scsp/framework/core/identity/PushInfoList;

    invoke-virtual {p0, p1}, Lcom/samsung/scsp/framework/core/identity/PushInfoManager;->updateCache(Lcom/samsung/scsp/framework/core/identity/PushInfoList;)V

    return-void
.end method
