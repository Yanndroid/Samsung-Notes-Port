.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->syncToMicrosoftNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->e(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;Z)V

    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;->e(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncToMicrosoftPrefFragment;Z)V

    return-void
.end method
