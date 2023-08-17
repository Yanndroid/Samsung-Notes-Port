.class abstract Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsCompareLayoutManager"
.end annotation


# instance fields
.field public final FIRST_TAG:Ljava/lang/String;

.field public final SECOND_TAG:Ljava/lang/String;

.field public final mContainerFragment:Landroidx/fragment/app/Fragment;

.field public final mNoteInfoArguments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "first"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->FIRST_TAG:Ljava/lang/String;

    const-string v0, "second"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->SECOND_TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mContainerFragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mNoteInfoArguments:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addFragment(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;ILjava/lang/String;)V
    .locals 3
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mContainerFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mContainerFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->KEY_BUNDLE:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/compare/viewer/CompareViewerFragment;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/compare/viewer/CompareViewerFragment;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public canShowChangeOption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onViewCreated()V
.end method

.method public setFirstFragment()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mNoteInfoArguments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFirstFragment# mNoteInfoArguments is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->first_pan:I

    const-string v2, "first"

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->addFragment(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;ILjava/lang/String;)V

    return-void
.end method

.method public abstract setSecondFragment()V
.end method
