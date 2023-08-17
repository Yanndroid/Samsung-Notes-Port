.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;
.super Landroidx/lifecycle/MediatorLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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

.field public f:I

.field public g:I

.field public final h:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V
    .locals 10

    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->f:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->g:I

    new-instance v1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->h:Landroidx/lifecycle/Observer;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->i:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v9, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v3, "SesCoeditSpaceAndStandaloneNoteCountLiveData"

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$b;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesReadResolverBase;->mContentUri:Landroid/net/Uri;

    invoke-direct {v2, p0, p1, v3, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$b;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;Landroid/content/Context;Landroid/net/Uri;Z)V

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->b:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->e:Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getAllCoeditStandAloneNoteList_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$c;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;)V

    invoke-virtual {p0, v2, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->f:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->g:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->f:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->g:I

    return-void
.end method


# virtual methods
.method public e()Ljava/util/List;
    .locals 7
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

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->d:Landroid/content/Context;

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

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;->i:Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

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

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
