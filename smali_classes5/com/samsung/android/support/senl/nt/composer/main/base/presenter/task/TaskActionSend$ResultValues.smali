.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mErrorCode:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public showErrorToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorToast# context is null. error code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorToast#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mErrorCode:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mErrorCode:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadUtil;->showErrorToast(Landroid/content/Context;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mErrorCode:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_video_format_not_supported:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ResultValues;->mContext:Landroid/content/Context;

    return-void
.end method
