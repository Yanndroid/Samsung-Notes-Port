.class Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->deleteDuplicated()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

.field public final synthetic val$remove:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$1;->val$remove:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$1;->val$remove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->b(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;

    move-result-object v2

    iget-object v3, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesDebugDAO;->deleteDocuments(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
