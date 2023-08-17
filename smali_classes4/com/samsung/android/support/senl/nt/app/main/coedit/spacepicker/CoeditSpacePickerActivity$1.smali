.class Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActivityContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

.field public final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    return-object v0
.end method

.method public launchActivity(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->launchActivity(Landroid/content/Intent;Lcom/samsung/android/support/senl/nt/app/common/NotesActivityResultCallback;)V

    return-void
.end method

.method public onSessionConnected(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity$1;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;->e(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;Landroid/os/Bundle;)V

    return-void
.end method
