.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

.field private final mFolderIconView:Landroid/widget/ImageView;

.field private final mFolderNameView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FolderViewManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_folder_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderNameView:Landroid/widget/TextView;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_folder_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->initFolderPickerDialog()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;

    move-result-object p0

    return-object p0
.end method

.method private initFolderPickerDialog()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "folder_picker_dialog"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->getFolderPickerDialogClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->getFolderPickerDialogClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->TAG:Ljava/lang/String;

    const-string v3, "initFolderPickerDialog: cannot get the FolderPickerDialog class"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->getFolderPickerDialogClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getDocUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getFolderUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setPickerDialogData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getFolderUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setHighlightFolderUuid(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setFolderSelectedListener(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder click exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_2
    return-object v0
.end method


# virtual methods
.method public init(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->init(Landroid/view/View;Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public init(Landroid/view/View;Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isMde()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateFolderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getFolderName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getFolderColor()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getFolderIcon()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->updateFolderInfo(Ljava/lang/String;II)V

    return-void
.end method

.method public updateFolderInfo(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderNameView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderNameView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->mFolderIconView:Landroid/widget/ImageView;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method
