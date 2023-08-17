.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->goToGalaxyAppStore()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$3;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;Z)V

    return-void
.end method
