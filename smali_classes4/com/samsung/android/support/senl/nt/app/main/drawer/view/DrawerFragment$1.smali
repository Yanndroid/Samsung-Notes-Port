.class Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string p1, "view_mode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->noteslist_fragment_bg_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    :cond_0
    const-string p1, "settings_sync_to_microsoft"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->f(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->msSyncChanged()V

    goto :goto_2

    :cond_1
    const-string p1, "key_coedit_has_badge"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->f(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->updateBadge(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->updateDrawerIconWithBadge(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_2

    :cond_2
    const-string p1, "key_gcs_drawer_has_badge"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->f(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isCoeditFeatureEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$SharedNotes;->UUID:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->updateBadge(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
