.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->showSyncTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

.field public final synthetic val$syncTypeDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$8;->val$syncTypeDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ln2/a;->E(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$8;->val$syncTypeDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$8;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;)V

    return-void
.end method
