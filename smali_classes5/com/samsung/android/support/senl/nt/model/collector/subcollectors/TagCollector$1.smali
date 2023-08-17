.class Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;->collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;

.field public final synthetic val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

.field public final synthetic val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesAutoTagEntity;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setNormalizeName(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDisplayName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->setDocUuid(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->removeTagEntities(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectResolver;->insertTagEntities(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setTagData(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollectListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector$1;->val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    return-void
.end method
