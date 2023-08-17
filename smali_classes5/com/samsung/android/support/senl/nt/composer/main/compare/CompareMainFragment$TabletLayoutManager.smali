.class Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$TabletLayoutManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabletLayoutManager"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->setFirstFragment()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$TabletLayoutManager;->setSecondFragment()V

    return-void
.end method

.method public setSecondFragment()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mNoteInfoArguments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSecondFragment# mNoteInfoArguments is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mContainerFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "second"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mNoteInfoArguments:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->second_pan:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->addFragment(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/compare/CompareMainFragment$AbsCompareLayoutManager;->mContainerFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_2
    :goto_0
    return-void
.end method
