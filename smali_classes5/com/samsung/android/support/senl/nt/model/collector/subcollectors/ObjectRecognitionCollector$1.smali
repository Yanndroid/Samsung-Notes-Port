.class Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseHyperText(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->getParseHyperTextContract()Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;->parseHyperText(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
