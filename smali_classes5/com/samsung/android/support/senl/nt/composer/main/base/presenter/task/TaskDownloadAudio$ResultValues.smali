.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mOverSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mOverSize:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public showErrorDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDownloadAudio$ResultValues;->mOverSize:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->showErrorDialog(Landroid/content/Context;I)Z

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_failed_to_download_content:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void
.end method
