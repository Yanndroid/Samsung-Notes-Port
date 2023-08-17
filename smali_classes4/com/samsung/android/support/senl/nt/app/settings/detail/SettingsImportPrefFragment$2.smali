.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->showDialogWhenMobileNetwork(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

.field public final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;->val$run:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;->val$run:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lc3/q;->v(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;->val$run:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
