.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;
.super Landroidx/lifecycle/MediatorLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MediatorLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

.field public f:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

.field public final g:Landroidx/lifecycle/Observer;
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
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V
    .locals 9

    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->g:Landroidx/lifecycle/Observer;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->f:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v8, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "SesCoeditStandaloneNoteLiveData"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$b;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase;->mContentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$b;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;Landroid/content/Context;Landroid/net/Uri;Z)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->b:Landroidx/lifecycle/LiveData;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getAllCoeditStandAloneNoteList_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c$c;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;)V

    invoke-virtual {p0, v1, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestSpaceList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getStandAlone()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getSpaceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getCreatedTime()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->isOwnedByMe()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->setOwnedByMe(Z)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getStandAlone()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->setStandAlone(Z)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->isOwnedByMe()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->setOwnedByMe(Z)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getGroupId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getMemberInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->setMembers(Ljava/util/List;)V

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v8, v6}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getUnreadCoeditNoteCount(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;->setUnReadCount(I)V

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;-><init>()V

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setSpaceEntry(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setType(I)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v8

    invoke-virtual {v8}, Lv/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getAuthorityByMemberId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->setAuthority(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "CoeditPref"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-wide/16 v5, -0x1

    const-string v7, "CoeditPrefKeyReadAllTime"

    invoke-virtual {v0, v7, v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->f:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/app/notes/sync/db/f;->d(Ljava/util/List;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v4

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->getGroupCount(Ljava/lang/String;)I

    move-result v13

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v4

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v8

    invoke-virtual {v8}, Lv/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getAuthorityByMemberId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->d:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$c;->e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    move-wide v11, v5

    invoke-static/range {v8 .. v14}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;->a(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JILjava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lv/d;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v1
.end method
