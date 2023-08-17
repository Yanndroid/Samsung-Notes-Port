.class Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/common/mining/ICompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector;->collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector;

.field public final synthetic val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

.field public final synthetic val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector$1;->val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector$1;->val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector$1;->val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;->setRecommendedTitleData(Ljava/util/List;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollectListenerManager;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollectListenerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector$1;->val$collectInfo:Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector$1;->val$collectRepository:Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollectListenerManager;->notifyOnCollectFinished(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)V

    return-void
.end method
