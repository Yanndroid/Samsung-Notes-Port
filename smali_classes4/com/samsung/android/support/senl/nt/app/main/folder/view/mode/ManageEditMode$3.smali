.class Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->showBottomNavigation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mFragmentContract:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IFragment;->getMode()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/ViewContract$IMode;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
