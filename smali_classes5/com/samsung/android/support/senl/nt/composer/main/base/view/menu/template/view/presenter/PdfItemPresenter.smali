.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;
.source "SourceFile"


# static fields
.field private static final KEY_PDF_DELETED_ITEM:Ljava/lang/String; = "key_pdf_deleted_item"

.field private static final KEY_PDF_MODE:Ljava/lang/String; = "key_pdf_mode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPageWidth:F

.field private mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

.field private mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PdfItemPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/PdfItemData;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/PdfItemData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;->getTemplateViewWidth(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mPageWidth:F

    return-void
.end method


# virtual methods
.method public createItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mTemplatesPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;->getAddedTemplatesFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;-><init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->getTemplateType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getData()Ljava/lang/String;

    move-result-object v8

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mPageWidth:F

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;->getPdfDrawablePath(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;F)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->getPageCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setPageCount(I)V

    return-object v0
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public getTemplateType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemMode()I

    move-result v0

    const-string v1, "key_pdf_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mDeletedItemList:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "key_pdf_deleted_item"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onShowTemplatePreviewDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onShowTemplatePreviewDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;-><init>(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->mTemplatePreviewDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/dialog/TemplatePreviewDialog;->onShowTemplatePreviewDialog(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key_pdf_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mRestoreItemMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "key_pdf_deleted_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mDeletedItemList:Ljava/util/List;

    :cond_0
    return-void
.end method
