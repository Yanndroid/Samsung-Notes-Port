.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;
.source "SourceFile"


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mPageRatio:F

.field private mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

.field private mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

.field private mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PdfDefaultItemPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;F)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;F)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;->getDefaultPdfTemplatesFolder()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mCachePath:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mPageRatio:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->updateDefaultPdfUrlItem(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDownloadUrlPdfCallback(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;",
            ")",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    return-object v0
.end method

.method private loadDefaultPdfItem(Landroid/content/Context;Z)V
    .locals 11

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_template_raw_res:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_page_count:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_long_page_count:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mCachePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadDefaultPdfItem# the pdf file not exists. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    :try_start_1
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mCachePath:Ljava/lang/String;

    invoke-direct {p2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;-><init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->setPdfFilePath(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_01_planner:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;->getPdfDrawablePath(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    aget p1, v2, v1

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setPageCount(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getExpanded()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->addItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "loadDefaultPdfItem# exception"

    invoke-static {p2, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private loadDefaultPdfUrlItem(Landroid/content/Context;Z)V
    .locals 19

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->DEBUG:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_url_template_stg:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_url_long_template_stg:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    :cond_0
    new-array v0, v2, [[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_url_template:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_url_long_template:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v2

    if-eqz p2, :cond_1

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_url_template_drawable_res:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_page_count:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_url_template_long_drawable_res:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_long_page_count:I

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_url_template_name_res:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    :try_start_0
    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;

    iget-object v8, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mCachePath:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;-><init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    :goto_2
    if-ge v4, v8, :cond_4

    aget-object v9, v0, v3

    aget-object v9, v9, v4

    invoke-static {v9}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mCachePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->setPdfFilePath(Ljava/lang/String;)V

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v11, p1

    invoke-static {v11, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;->getPdfDrawablePath(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object v12, v10

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    move-object/from16 v11, p1

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v13, 0x7

    const/4 v14, 0x2

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v12, -0x1

    invoke-virtual {v2, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move-object v12, v10

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->makePdfUriList([[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v10, v9, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setPdfUris(Ljava/util/List;I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    aget v9, v5, v4

    invoke-virtual {v10, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setPageCount(I)V

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getExpanded()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->addItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string v3, "loadDefaultPdfUrlItem# exception"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private makePdfUriList([[Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    aget-object p1, p1, v1

    aget-object p1, p1, p2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private showDownloadConfirmDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_download_pdf_using_mobile_data:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_ok:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_cancel:I

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showNetworkErrorToast(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "showNetworkErrorToast# network is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_network_error_message:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method private updateDefaultPdfUrlItem(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getLoadItemIndex()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDefaultPdfUrlItem# the pdf file not exists. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mCachePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;-><init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;->getPdfDrawablePath(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setDrawablePath(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setPath(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setMode(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->notifyItemChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string p3, "updateDefaultPdfUrlItem# exception"

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string p2, "updateDefaultPdfUrlItem# pdfPathList is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public downloadUrlTemplatePdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 9

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->showNetworkErrorToast(Landroid/content/Context;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "downloadUrlTemplatePdf#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getPdfUris()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mCachePath:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/util/List;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->getDownloadUrlPdfCallback(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->run()V

    return-void
.end method

.method public getTemplateType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public initItemData(F)V
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/PdfDefaultItemData;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/PdfDefaultItemData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    return-void
.end method

.method public initItems(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->initItems(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->A4_PORTRAIT:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mPageRatio:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->equal(F)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->loadDefaultPdfItem(Landroid/content/Context;Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->loadDefaultPdfUrlItem(Landroid/content/Context;Z)V

    return-void
.end method

.method public onDownloadTemplate(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isDataNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->showNetworkErrorToast(Landroid/content/Context;)V

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isWiFiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string v2, "onDownloadTemplate# wifi is not available"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->showDownloadConfirmDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->downloadUrlTemplatePdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectTemplate# mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getHeight()I

    move-result p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->onSelectItem(ILjava/lang/String;II)V

    return-void
.end method

.method public onShowTemplatePreviewDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onShowTemplatePreviewDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;-><init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->onShowTemplatePreviewDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    return-void
.end method

.method public setSelectedTemplateData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    return-void
.end method

.method public updateItemsDrawable(Landroid/content/Context;F)V
    .locals 1

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mPageRatio:F

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->clearItemDataList()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->initItems(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->getTemplateType()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemDataList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->mRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->getSelectedItemIndex()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->getTemplateType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->setSelectedTemplateData(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
