.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mErrorCode:I

.field private mUpdateInvertBG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mUpdateInvertBG:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mUpdateInvertBG:Z

    return p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    return v0
.end method

.method public isUpdateInvertBG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mUpdateInvertBG:Z

    return v0
.end method

.method public showErrorToast()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorToast# context is null. error code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorToast#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToast(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadUtil;->showErrorToast(Landroid/content/Context;I)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mErrorCode:I

    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$plurals;->can_not_paste_item_at_one_time:I

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_paste_error_page_data_can_not_be_pasted_on_inifinity_page:I

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_2

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_5

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->ss_maximum_number_of_characters_exceeded:I

    new-array v2, v2, [Ljava/lang/Object;

    const v5, 0x55730

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Restriction;->showToastCoeditErrorOverLargeMaxCount(Landroid/content/Context;)Z

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_content_not_supported:I

    goto :goto_0

    :cond_6
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->mContext:Landroid/content/Context;

    return-void
.end method
