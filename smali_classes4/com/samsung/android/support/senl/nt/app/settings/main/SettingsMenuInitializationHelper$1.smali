.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;->initTipCard(Landroidx/preference/PreferenceFragmentCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;

.field public final synthetic val$fragment:Landroidx/preference/PreferenceFragmentCompat;

.field public final synthetic val$preference:Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;Landroidx/preference/PreferenceFragmentCompat;Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;->val$fragment:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;->val$preference:Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "ST$SettingsMenuInitializationHelper"

    const-string v0, "TipCardButtonCloseClickListener# onClick()."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getPrefUserCheckedVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setHasTipCard(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;->val$fragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMenuInitializationHelper$1;->val$preference:Lcom/samsung/android/support/senl/nt/app/settings/common/component/UpdateTipCardPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string p1, "501"

    const-string v0, "5411"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
