.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_preview_dialog_thumbnail_width_long:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_preview_dialog_thumbnail_width:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$InputValues;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v0

    const-string v6, ""

    invoke-virtual {v3, v4, v6, v2, v5}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->getPageBitmap(Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$ResultValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog$TaskLoadPdfThumbnails;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
