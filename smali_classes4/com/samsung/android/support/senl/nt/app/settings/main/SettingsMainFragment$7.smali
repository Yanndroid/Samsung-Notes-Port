.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$7;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

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

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/external/GlobalSetting;->launchContinuitySetting(Ljava/lang/ref/WeakReference;I)V

    return-void
.end method
