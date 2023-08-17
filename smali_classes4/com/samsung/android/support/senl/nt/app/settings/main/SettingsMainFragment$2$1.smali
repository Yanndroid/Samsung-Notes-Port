.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->handleSwitchPreferenceChange(Landroidx/preference/SwitchPreferenceCompat;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    const-string v1, "android.permission.GET_ACCOUNTS"

    const-string v2, "android.permission.READ_PHONE_STATE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xca

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->h(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;I[Ljava/lang/String;)V

    return-void
.end method
