.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_TYPE_DOWNLOAD_FAIL:I = 0x100

.field public static final ERROR_TYPE_EXCEED_ATTACH_COUNT:I = 0x200

.field public static final ERROR_TYPE_NOT_AVAILABLE_DOWNLOAD:I = 0x800

.field public static final ERROR_TYPE_OVER_NOTE_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DownloadUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showErrorToast(Landroid/content/Context;I)V
    .locals 4

    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->base_string_failed_to_load_image:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_1

    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x400

    invoke-static {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getOverSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_unable_to_insert_more_than:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_failed_to_download_content:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    return-void
.end method
