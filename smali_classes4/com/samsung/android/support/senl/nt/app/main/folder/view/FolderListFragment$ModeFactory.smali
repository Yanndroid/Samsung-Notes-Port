.class Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeFactory"
.end annotation


# instance fields
.field public mManage:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

.field public mManageEdit:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

.field public mManageSync:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;Lcom/samsung/android/support/senl/nt/app/main/folder/view/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)V

    return-void
.end method


# virtual methods
.method public getMode(I)Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->mManageSync:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;

    if-nez p1, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->mManageSync:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageSyncMode;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->mManageEdit:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    if-nez p1, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->mManageEdit:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageEditMode;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->mManage:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    if-nez p1, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/main/common/view/FolderPenRecyclerView;Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/FolderListFragment$ModeFactory;->mManage:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    :cond_3
    :goto_0
    return-object p1
.end method
