.class Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->getLastModifiedAt()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;->getLastModifiedAt()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/updater/ReadyStateUpdater$Executor$1;->compare(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesRetryEntity;)I

    move-result p1

    return p1
.end method
