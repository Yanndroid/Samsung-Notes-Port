.class Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->onBackKeyDown()Z

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->inflateSelectAllLayout(Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController$OnClickSelectAllListener;)V

    const/4 p1, 0x0

    return p1
.end method
