.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;
    }
.end annotation


# static fields
.field private static final MAX_PAGE_COUNT_FOR_ADDED_PDF_TEMPLATE:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TemplatePreviewDialog"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->loadAllPagesThumbnail(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadAllPagesThumbnail(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAllPagesThumbnail# Bitmap size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_template_preview_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_preview_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_template_preview_dialog_item:I

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_template_preview_item_image:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_ok:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;)V

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onShowTemplatePreviewDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 4

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getPageCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getType()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->run()V

    return-void
.end method
