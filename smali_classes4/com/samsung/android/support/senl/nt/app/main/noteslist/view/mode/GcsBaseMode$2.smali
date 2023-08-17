.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->requestSync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

.field public final synthetic val$log:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS1] requestSync# caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->val$log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$RequestSyncCallback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$RequestSyncCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;)V

    invoke-static {v0}, Lu/h;->o(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->requestSpaceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/f;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestShare for ghost group or note"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getStateInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1, v2}, Lp/a;->m(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/GcsBaseMode;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS1-2] requestSync# Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
