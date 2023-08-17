.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ALPHA:F = 1.0f


# instance fields
.field private mCoeditAddMember:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;

.field private mCoeditMemberListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;

.field private final mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mFavorite:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

.field private mFolderViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

.field private mNoteInfoViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

.field private mTagListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

.field private final mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

.field private mTitleViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

.field private final mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->createDialog(Landroidx/appcompat/app/AppCompatActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    return-object p0
.end method

.method private createDialog(Landroidx/appcompat/app/AppCompatActivity;)Landroidx/appcompat/app/AlertDialog;
    .locals 10

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_title_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mToolbar:Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$OnTitleChangedListener;)V

    iput-object v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->init()V

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mFavorite:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;->init(F)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    invoke-direct {v3, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mCoeditAddMember:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;->init(F)V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_folder_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-direct {v3, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;)V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mFolderViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->init(Landroid/view/View;Landroidx/appcompat/app/AlertDialog;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTagListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getHashTagPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->init(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/hashtag/HashTagContract$Presenter;F)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_info_container:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog$2;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager$Contract;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mNoteInfoViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;->initInfoTextViews()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mCoeditMemberListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;->init(Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v1
.end method

.method private setAnchor(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    sget v1, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;->TOOLBAR:I

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->anchorLayoutStyle(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mFavorite:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    return-object v0
.end method

.method public getTitleViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public initFavorite()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mFavorite:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isFavorite()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;->updateState(ZZ)V

    return-void
.end method

.method public initNoteInfo()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mNoteInfoViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;->updateInfoContainer()V

    return-void
.end method

.method public initTagList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTagListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->setEditable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTagListView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->updateTagListView()V

    return-void
.end method

.method public initTitle()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;->SHOWN:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->setState(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager$State;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getTitleRecommendViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mTitleEditorPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleRecommendViewManager;->setEnabled(Z)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->initTitle()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->initFavorite()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->initNoteInfo()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->initTagList()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->setAnchor(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
