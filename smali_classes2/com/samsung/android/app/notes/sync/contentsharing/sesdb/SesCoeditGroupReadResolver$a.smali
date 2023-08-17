.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver$a;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getGroupContentUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver$a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/mobileservice/social/group/Group;

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->getGroupType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->getLeaderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditGroupEntry;->setOwnerId(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onActive()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->onActive()V

    return-void
.end method

.method public onInactive()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->onInactive()V

    return-void
.end method
