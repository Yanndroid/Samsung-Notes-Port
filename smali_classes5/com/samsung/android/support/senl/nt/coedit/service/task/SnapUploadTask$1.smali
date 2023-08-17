.class Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask;->onSnapUploadCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$appContext:Landroid/content/Context;

.field public final synthetic val$refResourceId:Ljava/lang/String;

.field public final synthetic val$spaceId:Ljava/lang/String;

.field public final synthetic val$uiHandler:Landroid/os/Handler;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$uuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$refResourceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$appContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$spaceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$uiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->lambda$run$0(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/coedit/R$string;->co_edit_unexpected_server_error_try_again_later:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$uuid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->getWorkspaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SnapUploadTask"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSnapUploadCompleted, success to send snap : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$refResourceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$refResourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->setWorkspaceId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[CS5] onSnapUploadCompleted, itemId is not defined, need to request itemId"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$spaceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$uuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$refResourceId:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lv/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lv/c;

    move-result-object v0

    invoke-virtual {v0}, Lv/c;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lv/c;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS5-1] onSnapUploadCompleted, finish to upload item to SES, successListSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lv/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "[CS5-2] onSnapUploadCompleted, fail to upload item to SES, show a error toast!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask$1;->val$appContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/support/senl/nt/coedit/service/task/a;

    invoke-direct {v2, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/task/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method
