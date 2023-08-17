.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

.field public mOriginalFileName:Ljava/lang/String;

.field public mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mOriginalFileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    return-void
.end method


# virtual methods
.method public showErrorToast(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "showErrorToast# context is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mErrorType:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_ERROR_MEMORY:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getNotEnoughStorageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->showErrorDialog(Landroid/content/Context;I)Z

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_OVER_NOTE_SIZE:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getOverSizeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;->ERROR_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    if-ne v2, p1, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_can_not_open_file:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public updateTitle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mOriginalFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;->mOriginalFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
