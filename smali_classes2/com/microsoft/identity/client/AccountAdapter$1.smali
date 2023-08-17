.class Lcom/microsoft/identity/client/AccountAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/AccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasNoCorrespondingHomeAccount(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/util/List;)Z
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/cache/ICacheRecord;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/cache/ICacheRecord;->getAccount()Lcom/microsoft/identity/common/java/dto/AccountRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/microsoft/identity/client/AccountAdapter$1$1;

    invoke-direct {v0, p0, p2}, Lcom/microsoft/identity/client/AccountAdapter$1$1;-><init>(Lcom/microsoft/identity/client/AccountAdapter$1;Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public filter(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/microsoft/identity/client/AccountAdapter$HomeAccountFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/microsoft/identity/client/AccountAdapter$HomeAccountFilter;-><init>(Lcom/microsoft/identity/client/AccountAdapter$1;)V

    invoke-static {p1, v1}, Lcom/microsoft/identity/client/AccountAdapter;->access$100(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;

    invoke-direct {v3, v2}, Lcom/microsoft/identity/client/AccountAdapter$GuestAccountFilter;-><init>(Lcom/microsoft/identity/client/AccountAdapter$1;)V

    invoke-static {p1, v3}, Lcom/microsoft/identity/client/AccountAdapter;->access$100(Ljava/util/List;Lcom/microsoft/identity/client/AccountAdapter$CacheRecordFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/cache/ICacheRecord;

    invoke-direct {p0, v2, v1}, Lcom/microsoft/identity/client/AccountAdapter$1;->hasNoCorrespondingHomeAccount(Lcom/microsoft/identity/common/java/cache/ICacheRecord;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
