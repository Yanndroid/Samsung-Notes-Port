.class Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;->collect(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectInfo;Lcom/samsung/android/support/senl/nt/model/collector/repository/ICollectRepository;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$2;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$2;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/AbsCollector;->isCanceled()Z

    move-result v0

    return v0
.end method
