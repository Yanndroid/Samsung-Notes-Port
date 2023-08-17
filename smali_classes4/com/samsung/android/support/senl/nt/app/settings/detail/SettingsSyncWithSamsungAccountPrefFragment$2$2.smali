.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;->onEnded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;

.field public final synthetic val$errorCode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$2;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$2;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$2;->val$errorCode:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;->d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;ZI)V

    return-void
.end method
