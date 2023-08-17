.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$g;,
        Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:I

.field public e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

.field public f:Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "GraphManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->c:Ljava/util/concurrent/Executor;

    const/16 v0, 0x438

    iput v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->d:I

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->NONE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/identity/common/logging/Logger;->setAllowLogcat(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->o()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Lcom/microsoft/identity/client/AuthenticationCallback;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->s()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->L()V

    return-void
.end method

.method public static x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$g;->a()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->NONE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    invoke-static {}, Li1/a;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g:Z

    invoke-static {}, Li1/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    return-void
.end method

.method public final B(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li1/f;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/f;

    invoke-virtual {v0}, Li1/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final C()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Li1/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->m(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not sync while roaming. isNetworkValid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public D()Z
    .locals 2

    new-instance v0, Li1/g;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Li1/g;->c()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 3

    invoke-static {}, Li1/a;->d()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSkippedFeedSyncExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GraphManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final F(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Z
    .locals 7

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    :goto_0
    move v1, v2

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsLock()I

    move-result v4

    const-string v5, "GraphManager"

    if-lez v4, :cond_2

    if-eq p2, v0, :cond_2

    sget-object v4, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->UPDATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-eq p2, v4, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isValid. LockType : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsLock()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValid. categoryUuid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/app/notes/sync/db/f;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/notes/sync/db/f;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->isSyncWithMS()I

    move-result v4

    if-eqz v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Valid. Add request submit item. categoryUuid : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Valid. Add request submit item. delete"

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public final G()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    sget-object v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->SYNCING:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    const-string v4, "GraphManager"

    if-ne v0, v3, :cond_0

    const-string v0, "perform, state is syncing"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iput-object v3, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    :try_start_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform item count : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->b()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->d()J

    move-result-wide v15

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->f()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-result-object v10

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->g()J

    move-result-wide v17

    iget-object v5, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    sget-object v6, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->CANCELED:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    if-ne v5, v6, :cond_1

    const-string v0, "State is Canceled. break"

    :goto_1
    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Li1/a;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Li1/a;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v5

    invoke-virtual {v5}, Ln/a;->o()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->C()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isRunningOnEditMode()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", uuid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", connectedNotesId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-ne v10, v5, :cond_3

    new-instance v3, Li1/g;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v3, v14, v5}, Li1/g;->e(Ljava/lang/String;I)V

    new-instance v3, Lj1/c;

    invoke-direct {v3, v11, v14}, Lj1/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lj1/c;->c()V

    move-object v7, v14

    goto/16 :goto_4

    :cond_3
    new-instance v5, Lj1/a;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v20

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->e()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x438

    invoke-static {v6, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->createPageThumbnailCacheDirectory(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x438

    const/16 v24, 0x32

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v27, 0x14

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lj1/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIFZI)V

    invoke-virtual {v5}, Lj1/a;->l()Ljava/util/List;

    move-result-object v19

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->c()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Li1/h;

    invoke-virtual {v5}, Lj1/a;->g()Ljava/lang/String;

    move-result-object v9

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual {v5}, Lj1/a;->j()Z

    move-result v22

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    move-object v8, v14

    move-object/from16 v23, v10

    move-object/from16 v10, v19

    move-object/from16 v24, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v14

    move-wide v14, v15

    move/from16 v16, v21

    move/from16 v19, v22

    invoke-direct/range {v5 .. v19}, Li1/h;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Li1/j;JJZJZ)V

    goto :goto_2

    :cond_4
    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v20, v14

    new-instance v3, Li1/h;

    invoke-virtual {v5}, Lj1/a;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lj1/a;->f()Li1/j;

    move-result-object v11

    const/16 v21, 0x0

    invoke-virtual {v5}, Lj1/a;->j()Z

    move-result v22

    move-object v5, v3

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v20

    move-object/from16 v10, v19

    move-wide v14, v15

    move/from16 v16, v21

    move/from16 v19, v22

    invoke-direct/range {v5 .. v19}, Li1/h;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Li1/j;JJZJZ)V

    :goto_2
    sget-object v5, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->CREATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-object/from16 v6, v23

    if-eq v6, v5, :cond_6

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance v5, Li1/g;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Li1/g;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->UPDATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    move-object/from16 v7, v20

    invoke-virtual {v5, v7, v6}, Li1/g;->e(Ljava/lang/String;I)V

    new-instance v5, Lj1/e;

    invoke-direct {v5, v3}, Lj1/e;-><init>(Li1/h;)V

    invoke-virtual {v5}, Lj1/e;->e()V

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v7, v20

    new-instance v6, Li1/g;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v6, v7, v5}, Li1/g;->e(Ljava/lang/String;I)V

    new-instance v5, Lj1/b;

    invoke-direct {v5, v3}, Lj1/b;-><init>(Li1/h;)V

    invoke-virtual {v5}, Lj1/b;->d()V

    :goto_4
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    :goto_5
    const-string v0, "Feed is not usable"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeException occurred. Failed. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_7
    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->IDLE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    iput-object v0, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    return-object v2
.end method

.method public H(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeConnectedNotes, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public I(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->A()V

    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg1/a;->p(Landroid/content/Context;)Lg1/a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Li1/a;->o(J)V

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object p1

    invoke-static {}, Li1/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lk1/b;->f(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)V

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$a;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V

    invoke-virtual {p1, v0}, Lk1/b;->e(Ll1/b;)V

    :cond_0
    return-void
.end method

.method public J()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "GraphManager"

    const-string v1, "requestSubmit"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->o()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Samsung Cloud Sync is not enabled. Ignore request"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->C()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Network is not valid. Ignore request"

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->G()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->p(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to request submit. enable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v2
.end method

.method public K(Lh1/a;)V
    .locals 3

    const-string v0, "GraphManager"

    const-string v1, "requestSubmitAsync"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->o()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Samsung Cloud Sync is not enabled. Ignore request"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->C()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Network is not valid. Ignore request"

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->N(Lh1/a;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->o()V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to request submit. enable : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final L()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$c;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->K(Lh1/a;)V

    return-void
.end method

.method public M()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg1/a;->p(Landroid/content/Context;)Lg1/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->s()Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/a;->i(Lcom/microsoft/identity/client/AuthenticationCallback;)Z

    :cond_0
    return-void
.end method

.method public final N(Lh1/a;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    sget-object v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->SYNCING:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    if-ne v0, v1, :cond_0

    const-string p1, "GraphManager"

    const-string v0, "runTask, state is syncing"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x438

    new-instance v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$e;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lh1/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;-><init>(Landroid/content/Context;ILh1/a;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->f:Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public O(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    invoke-static {p1}, Li1/a;->l(Z)V

    return-void
.end method

.method public P(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsLastSyncTime()J

    move-result-wide v7

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->z()Z

    move-result v9

    const-string v10, "GraphManager"

    if-eqz v9, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v11, ", new : "

    if-nez v9, :cond_3

    move-object/from16 v9, p2

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setMsSyncData, update MS sync document id. prev : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncAccountId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v10 .. v16}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->n(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v9

    :goto_0
    invoke-virtual {v0, v5}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setMsSyncAccountId(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v6

    :cond_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setMsSyncDocumentUuid(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    move-wide v2, v7

    goto :goto_1

    :cond_3
    move-object/from16 v9, p2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsSyncData, skipped by different MS account id. curr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v9, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMsSyncData, signed out. update MS data. account id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", document id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setMsSyncAccountId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setMsSyncDocumentUuid(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->setMsLastSyncTime(J)V

    :goto_2
    return-void
.end method

.method public Q(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSignIn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g:Z

    invoke-static {p1}, Li1/a;->p(Z)V

    return-void
.end method

.method public R(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserInfo. name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Li1/a;->t(Ljava/lang/String;)V

    invoke-static {p2}, Li1/a;->s(Ljava/lang/String;)V

    return-void
.end method

.method public S()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public T(Lh1/a;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->l()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncNow. failed size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->e:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    sget-object v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->SYNCING:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->E()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    new-instance v0, Lr0/a;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr0/a;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->K(Lh1/a;)V

    return v2

    :cond_4
    :goto_1
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "GraphManager-syncNow"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$d;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lh1/a;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public U(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "GraphManager"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add ConnectedFolder. folderUuid :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "GraphManager-updateConnectedFolder"

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$b;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove ConnectedFolder. folderUuid :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public V(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConnectedNotes, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedNotesId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/t;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConnectedNotesId, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedNotesId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/app/notes/sync/db/t;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public X()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->l()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->J()Ljava/util/List;

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-object/from16 v9, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFailedDocument. uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "GraphManager"

    invoke-static {v14, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-ne v9, v2, :cond_0

    new-instance v15, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-string v3, ""

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;IJ)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getNoteFeedEntryByUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v15, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getCreatedAt()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getLastModifiedAt()J

    move-result-wide v7

    invoke-virtual {v0, v13, v9}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->r(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-result-object v9

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsLock()I

    move-result v10

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;IJ)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b:Ljava/util/Map;

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item is null. uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "This item is already included."

    invoke-static {v14, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public j(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v13, p1

    move-object/from16 v9, p2

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v13}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getNoteFeedEntryByUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;

    move-result-object v1

    invoke-virtual {p0, v1, v9}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->F(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Z

    move-result v2

    const-string v3, "GraphManager"

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid request. uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Li1/g;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v13, v2}, Li1/g;->e(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addItem. uuid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", requestType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-ne v9, v3, :cond_1

    new-instance v14, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    new-instance v1, Li1/g;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v13}, Li1/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-string v3, ""

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;IJ)V

    :goto_0
    move-object v2, v14

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    new-instance v14, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getCreatedAt()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getLastModifiedAt()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->r(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-result-object v9

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsLock()I

    move-result v10

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;IJ)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public k(Ljava/util/List;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;",
            ">;",
            "Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "GraphManager"

    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addItem. count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", current accountId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;

    if-eqz v5, :cond_1

    iget-object v6, v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->F(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsSyncAccountId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsLastSyncTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDirty()I

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip item. document accountId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsSyncAccountId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsLastSyncTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", isDirty : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDirty()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v3

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v15, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getCreatedAt()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getLastModifiedAt()J

    move-result-wide v12

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->q(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-result-object v14

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsLock()I

    move-result v16

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object v6, v15

    move-object/from16 v19, v3

    move-object v3, v15

    move/from16 v15, v16

    move-wide/from16 v16, v17

    invoke-direct/range {v6 .. v17}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;IJ)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addItem. uuid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requestType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v3, v19

    goto/16 :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_3
    const-string v1, "invalid request."

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 4

    new-instance v0, Li1/g;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Li1/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/f;

    invoke-virtual {v1}, Li1/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->values()[Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-result-object v3

    invoke-virtual {v1}, Li1/f;->a()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->j(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/f;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/db/f;->b(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->isSyncWithMS()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add addFeedCreateOrUpdateRequiredNotes. folderUuid :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getNoteFeedListByCategoryUuid(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add addFeedCreateOrUpdateRequiredNotes. item size :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->NONE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->k(Ljava/util/List;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    if-nez v0, :cond_2

    invoke-static {}, Li1/a;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Li1/a;->m(Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-ne p2, v0, :cond_3

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Li1/g;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Li1/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->B(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "skip add queue, uuid : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestType : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GraphManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez p5, :cond_5

    const-string p5, ""

    :cond_5
    move-object v6, p5

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move-object v2, p1

    move-wide v4, p3

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Li1/g;->d(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 2

    const-string v0, "GraphManager"

    const-string v1, "clear document list"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Li1/a;->m(Z)V

    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear document list. size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Li1/a;->m(Z)V

    return-void
.end method

.method public final q(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertRequestType. prev : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->NONE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->t(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->CREATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->UPDATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertRequestType. post : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final r(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertRequestType. prev : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->NONE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->CREATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->UPDATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertRequestType. post : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public final s()Lcom/microsoft/identity/client/AuthenticationCallback;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V

    return-object v0
.end method

.method public t(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsSyncAccountId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedNotesId. MS account : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GraphManager"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mismatch. Document MS account : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/FeedSyncEntry;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Li1/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncAccountId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedNotesId. MS account : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GraphManager"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mismatch. Document MS account : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getMsSyncDocumentUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->h:Z

    return v0
.end method

.method public y()J
    .locals 2

    invoke-static {}, Li1/a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g:Z

    return v0
.end method
