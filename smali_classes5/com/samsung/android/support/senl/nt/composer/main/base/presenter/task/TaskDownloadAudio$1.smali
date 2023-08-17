.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mUri is null."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->getAudioFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName is empty."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mDestFilePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->getAudioFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v4, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mUri:Landroid/net/Uri;

    invoke-static {v4, v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->saveUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveUriToFile is false."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file is not exist."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_3
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->isSupportedAudio(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not supported audio file."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToAdd(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$InputValues;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;

    invoke-direct {v3, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
