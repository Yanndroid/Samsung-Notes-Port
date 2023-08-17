.class public Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mBaseComposerFragment:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BaseComposerActivity"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initList()V
    .locals 9

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setSortType(I)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->setIsDesc(Z)Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam$SortParamBuilder;->build()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAll(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$1;

    invoke-direct {v7, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;Ljava/util/List;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_listpopupwindow_item:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-object v5, v8

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->test_list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->activity_composer_sample_change_note:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->mBaseComposerFragment:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->composer_fragment_container:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->mBaseComposerFragment:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/sample/ChangeNoteActivity;->initList()V

    return-void
.end method
