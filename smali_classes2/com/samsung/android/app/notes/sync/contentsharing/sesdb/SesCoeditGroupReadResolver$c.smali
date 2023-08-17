.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver$c;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getMemberContentUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver$c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver$c;->b()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver$c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getMemberInfoListIncludePending(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;->getMemberList()Ljava/util/List;

    move-result-object v3

    :goto_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMemberListEntry;->getPendingList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_2
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
