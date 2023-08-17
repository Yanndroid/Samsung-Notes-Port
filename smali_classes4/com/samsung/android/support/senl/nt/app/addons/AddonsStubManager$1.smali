.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/dialog/BtnProgressDialogFragment$IAddonsInstallDialog;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;Z)V

    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "install_addons_dialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->showRecommendConvertDialog()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;Z)V

    :goto_0
    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;

    const-string v1, "install_addons_dialog"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager;->installAddons(Z)V

    return-void
.end method
