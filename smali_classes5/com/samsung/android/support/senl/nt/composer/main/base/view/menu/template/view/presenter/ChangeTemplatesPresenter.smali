.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEMPLATE_FOLDER_ADDED:Ljava/lang/String; = "added"

.field private static final TEMPLATE_FOLDER_DEFAULT_TEMPLATE:Ljava/lang/String; = "default_template"


# instance fields
.field private mAddedPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

.field private mAddedRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

.field private mAllItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;

.field private mDefaultPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

.field private mDefaultRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

.field private mDownloadDefaultPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

.field private mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

.field private mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

.field private mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

.field private mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

.field private mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

.field private mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

.field private mTemplateRootFolder:Ljava/io/File;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

.field private mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ChangeTemplatesPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadDefaultPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    new-instance v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    const-string v0, "templates"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->setTemplateRootFolder(Ljava/io/File;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageRatio()F

    move-result v0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;F)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadDefaultPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageRatio()F

    move-result v2

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;F)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAllItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private canShowPdfMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getIsSingleMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createDefaultTemplatePdf(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->getDefaultPdfTemplatesFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadDefaultPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadDefaultPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->getDownloadDefaultPdfCallback(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadDefaultPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->run()V

    return-void
.end method

.method private getDownloadDefaultPdfCallback(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;Landroid/content/Context;)V

    return-object v0
.end method

.method private getDownloadPdfCallback(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;Z)V

    return-object v0
.end method

.method private setItemData(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->initItems(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->initItems(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->initItems(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->updateAllItems()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->initTemplateRepository(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->initTemplateRepository(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method private setTemplateRootFolder(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mTemplateRootFolder:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string v1, "attachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;Landroidx/fragment/app/FragmentManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public calculateSpanCount(Landroid/content/Context;I)I
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_side_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->change_template_essential_item_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int v1, p2, v0

    add-int v2, p1, v0

    div-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSpanCount# itemSpace / itemWidth / layoutWidth / spanCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public detachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string v1, "detachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadDefaultPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    return-void
.end method

.method public downloadTemplateImage(Landroid/net/Uri;Landroid/content/Context;II)V
    .locals 7

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "image/jpeg"

    :cond_0
    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->getAddedTemplatesFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadBitmap;->saveImageFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadTemplateImage#, path : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    const/4 v6, 0x0

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->onOpenTemplateEditor(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string p3, "downloadTemplateImage#, Failed to template image content - not exists"

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_failed_to_load_image:I

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public downloadTemplatePdf(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->getAddedTemplatesFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;-><init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;Ljava/util/List;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->getDownloadPdfCallback(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDownloadPdfTask:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->run()V

    return-void
.end method

.method public getAddedTemplatesFolder()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mTemplateRootFolder:Ljava/io/File;

    const-string v2, "added"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string v2, "getAddedTemplatesFolder fail"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getDefaultPdfTemplatesFolder()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mTemplateRootFolder:Ljava/io/File;

    const-string v2, "default_template"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultPdfTemplatesFolder fail"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public init(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->createDefaultTemplatePdf(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->setItemData(Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->isSettingMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->setScrollToSelectedItem(Z)V

    :cond_0
    return-void
.end method

.method public insertTemplateImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTemplateImage#, path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->insertTemplateRepository(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public insertTemplatePdf(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertTemplatePdf#, path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$string;->dark_mode_not_applied_has_pdf_toast_msg:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p3, v0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    const/4 p3, 0x5

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->setSelectedTemplateData(ILjava/lang/String;)V

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    const-string v0, "application/pdf"

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->insertTemplateRepository(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadItemData()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string v1, "loadItemData#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAllItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->updateSelectedItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->clearItemList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->addItemToList(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAddedRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->clearItemList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAddedRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->addItemToList(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->canShowPdfMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->clearItemList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->addItemToList(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAddedPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->clearItemList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAddedPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->addItemToList(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->hidePdfTab()V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->onCancelDelete()Z

    move-result v0

    return v0
.end method

.method public onCancelDelete()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->onChangeMode(I)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onCancelTemplateItem()Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancelTemplateItem# getSelectedTemplateType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "template_type"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v5, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->getSelectedItem()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/TemplateIndexConverter;->convertTemplateNameToWPageIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getType()I

    move-result v0

    if-ne v0, v5, :cond_1

    if-gez v6, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_2
    if-gez v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelTemplateItem# selectedEssentialTemplate is wrong. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "template_essential_result"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCancelTemplateItem# selectedEssentialTemplate "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v0, "onCancelTemplateItem# getSelectedTemplate is not existed"

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne v1, v0, :cond_6

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "template_image_result"

    goto :goto_1

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "template_pdf_result"

    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    return-object v2
.end method

.method public onOpenTemplateEditor(Ljava/lang/String;II)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->getAddedTemplatesFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "files"

    const-string v2, "png"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileExtensions;->getFileNameByTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    const-string v4, ""

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->onOpenTemplateEditor(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSpenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->close()V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;->restoreState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;->restoreState(Landroid/os/Bundle;)V

    return-void
.end method

.method public scrollToSelectedTemplateItem()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;->getSelectedItemIndex()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->scrollToPosition(II)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAddedRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public selectTemplateImage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string v1, "selectTemplateImage# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$View;->onSelectItem(ILjava/lang/String;II)V

    return-void
.end method

.method public setItemAdapter(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setOnClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setOnClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setCustomItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setNeedDefaultTemplate(Z)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-direct {p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->setRecyclerViewItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAddedRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->setRecyclerViewItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;)V

    return-void
.end method

.method public setPdfItemAdapter(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setOnClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setOnClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->getItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setCustomItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;->setNeedDefaultTemplate(Z)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-direct {p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mDefaultPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->setRecyclerViewItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/ItemAdapter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAddedPdfRecyclerViewItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->setRecyclerViewItemData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/RecyclerViewItemData;)V

    return-void
.end method

.method public setSelectedTemplateData(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->setSelectedTemplateData(ILjava/lang/String;)V

    return-void
.end method

.method public setSelectedTemplateData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mImageItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->setSelectedTemplateData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->setSelectedTemplateData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfItemPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->setSelectedTemplateData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;)V

    return-void
.end method

.method public updateAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mAllItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/AllItemData;->addAllItems()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->loadItemData()V

    return-void
.end method

.method public updateItemsPageRatio(Landroid/content/Context;F)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    const-string p2, "updateItemsPageRatio# context is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItemsPageRatio# pageRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mEssentialItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/EssentialItemPresenter;->updateItemsDrawable(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->mPdfDefaultItemPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/PdfDefaultItemPresenter;->updateItemsDrawable(Landroid/content/Context;F)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->updateAllItems()V

    return-void
.end method
