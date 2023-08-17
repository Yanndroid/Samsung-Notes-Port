.class Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;->importSdocx(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

.field public final synthetic val$result:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$1;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$1;->val$result:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinish(IILjava/util/Map;I)V
    .locals 0
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnsupportedVersionError(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$1;->val$result:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;->setUnsupportedVersion(Z)Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$Result;

    return p2
.end method
