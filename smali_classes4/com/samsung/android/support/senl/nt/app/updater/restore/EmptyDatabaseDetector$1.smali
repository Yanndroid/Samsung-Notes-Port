.class Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->internalExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

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

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getOnRestoreListener()Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->getOnRestoreListener()Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$OnRestoreListener;->onFinish()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->a(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)Lt1/a;

    move-result-object p1

    invoke-virtual {p1}, Lt1/a;->P()Ljava/util/List;

    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;->b(Lcom/samsung/android/support/senl/nt/app/updater/restore/EmptyDatabaseDetector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onUnsupportedVersionError(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
