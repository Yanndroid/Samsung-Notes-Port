.class Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->access$000(Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;->k(Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;

    const-string v1, "android.permission.GET_ACCOUNTS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;IZ[Ljava/lang/String;)V

    return-void
.end method
