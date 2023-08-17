.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_DOWNLOAD:I = 0x1000000

.field public static final ERROR_NOT_ENOUGH_MEMORY:I = 0x10000

.field public static final ERROR_OVER_NOTE_SIZE:I = 0x20000

.field public static final ERROR_OVER_PDF_SIZE:I = 0x4000000

.field public static final ERROR_PDF_COPYRIGHT_PROTECTED:I = 0x800000

.field public static final ERROR_PDF_ERROR:I = 0x200000

.field public static final ERROR_PDF_FORMAT:I = 0x40000

.field public static final ERROR_PDF_OWNER_PERMISSION:I = 0x80000

.field public static final ERROR_PDF_PASSWORD_PROTECTED:I = 0x400000

.field public static final ERROR_PDF_RESTRICTION:I = 0x8000000

.field public static final ERROR_PDF_UNKNOWN_ERROR:I = 0x100000

.field public static final ERROR_UNSUPPORTED_NOTE_VERSION:I = 0x2000000

.field public static final MAXIMUM_PDF_PAGE_COUNT:J = 0xc8L

.field public static final MAXIMUM_PDF_SIZE_MB:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static mMaximumPdfSizeMB:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AddPdfUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->mMaximumPdfSizeMB:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConvertErrorCode(I)I
    .locals 1

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x4000000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x400000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x800000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x1000000

    if-eq p0, v0, :cond_6

    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_FORMAT:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/high16 p0, 0x40000

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_PROTECTED:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    const/high16 p0, 0x80000

    return p0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNSUPPORTED_NOTE_VERSION:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    const/high16 p0, 0x2000000

    return p0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_UNKNOWN:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    const/high16 p0, 0x100000

    return p0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_SUCCESS:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p0, v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_CANCEL:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq p0, v0, :cond_5

    const/high16 p0, 0x200000

    return p0

    :cond_5
    const/4 p0, 0x0

    :cond_6
    :goto_0
    return p0
.end method

.method public static getMaximumPdfSize()J
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->mMaximumPdfSizeMB:I

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMaximumPdfSizeMB()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->mMaximumPdfSizeMB:I

    return v0
.end method

.method public static setMaximumPdfSizeMB(I)V
    .locals 0

    sput p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->mMaximumPdfSizeMB:I

    return-void
.end method

.method public static showErrorToast(Landroid/content/Context;IZ)V
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->TAG:Ljava/lang/String;

    const-string p1, "showErrorToast# context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToastLowMemory(Landroid/content/Context;Z)V

    return-void

    :cond_1
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    const-wide/16 v0, 0x400

    invoke-static {p0, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToastOverSize(Landroid/content/Context;ZJ)V

    return-void

    :cond_2
    const/high16 v1, 0x4000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->getMaximumPdfSizeMB()I

    move-result p1

    int-to-long v3, p1

    invoke-static {p0, p2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->showErrorToastOverSize(Landroid/content/Context;ZJ)V

    goto/16 :goto_1

    :cond_3
    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_can_not_import_secured_pdfs:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const/high16 p2, 0x400000

    and-int/2addr p2, p1

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_can_not_open_password_protected_pdf_for_galaxy:I

    goto :goto_0

    :cond_5
    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_can_not_open_password_protected_pdf:I

    goto :goto_0

    :cond_6
    const/high16 p2, 0x800000

    and-int/2addr p2, p1

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_can_not_open_copyright_protected_pdf_for_galaxy:I

    goto :goto_0

    :cond_7
    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_can_not_open_copyright_protected_pdf:I

    goto :goto_0

    :cond_8
    const/high16 p2, 0x340000

    and-int/2addr p2, p1

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_can_not_open_file:I

    goto :goto_0

    :cond_9
    const/high16 p2, 0x1000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_failed_to_download_file:I

    goto :goto_0

    :cond_a
    const/high16 p2, 0x2000000

    and-int/2addr p2, p1

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result p2

    if-eqz p2, :cond_b

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->sync_new_format_content_jp:I

    goto :goto_0

    :cond_b
    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->sync_new_format_content:I

    goto :goto_0

    :cond_c
    const/high16 p2, 0x8000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->coedit_restriction_import_pdf:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_e
    return-void
.end method

.method private static showErrorToastLowMemory(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getNotEnoughStorageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->showErrorDialog(Landroid/content/Context;I)Z

    :goto_0
    return-void
.end method

.method private static showErrorToastOverSize(Landroid/content/Context;ZJ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorToastOverSize# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getOverSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->showErrorDialog(Landroid/content/Context;IJ)Z

    :goto_0
    return-void
.end method
