.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->i(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->m(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V

    return-void
.end method
