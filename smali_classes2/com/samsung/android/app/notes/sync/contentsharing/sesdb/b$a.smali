.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public f:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

.field public final k:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

.field public final l:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getSharedItemContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->l:Landroidx/lifecycle/Observer;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->g:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->i:Ljava/lang/String;

    new-instance p2, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->k:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a$b;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->j:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->h:Ljava/lang/String;

    invoke-static {v0}, Lv/d;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    const-string v3, "CoeditPref"

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v3

    const-string v4, "CoeditPrefKeyReadAllTime"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->getGroupCount(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->i:Ljava/lang/String;

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v8

    invoke-virtual {v8}, Lv/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getAuthorityByMemberId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->h:Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->g:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/app/notes/sync/db/f;->d(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->k:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-wide v10, v3

    move v12, v5

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;->a(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JILjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->b(Ljava/util/List;Ljava/util/Set;)V

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onActive()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->onActive()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->g:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllContentShare_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->f:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->l:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->j:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->register(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    return-void
.end method

.method public onInactive()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;->onInactive()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->f:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->l:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventManager;->getEventBus()Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$a;->j:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/EventBus;->unregister(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;)V

    return-void
.end method
