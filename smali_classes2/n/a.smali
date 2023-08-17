.class public Ln/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ln/a; = null

.field public static c:Z = false

.field public static d:Z = false

.field public static e:Z = true

.field public static f:Z = false

.field public static g:Z = false

.field public static h:I = 0x0

.field public static i:Z = false

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Z = false


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ln/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ln/a;->i:Z

    invoke-static {p0}, Ln/a;->e(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b()Ln/a;
    .locals 2

    const-class v0, Ln/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln/a;->b:Ln/a;

    if-nez v1, :cond_0

    new-instance v1, Ln/a;

    invoke-direct {v1}, Ln/a;-><init>()V

    sput-object v1, Ln/a;->b:Ln/a;

    :cond_0
    sget-object v1, Ln/a;->b:Ln/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    sget-boolean v0, Ln/a;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "ConditionalFeature"

    const-string v0, "isAllowedSesSync() : false <- isSocialErrorRaised is true!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isDemoDevice(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isUserOwner()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "ConditionalFeature"

    :try_start_0
    sget-boolean v1, Ln/a;->i:Z

    if-nez v1, :cond_2

    invoke-static {p0}, Ln/a;->c(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "isCoeditFeatureSupported() : start check isSesFeatureAvailable"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lv/f;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "isCoeditFeatureSupported() : true"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Ln/a;->j:Z

    goto :goto_0

    :cond_0
    sput-boolean v3, Ln/a;->j:Z

    const-string p0, "isCoeditFeatureSupported() : false"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sput-boolean v3, Ln/a;->j:Z

    :goto_0
    sput-boolean v2, Ln/a;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCoeditFeatureSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCoeditFeatureSupported() : isCoeditChecked "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Ln/a;->i:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCoeditSupported : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Ln/a;->j:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Ln/a;->j:Z

    return p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "ConditionalFeature"

    :try_start_0
    sget-boolean v1, Ln/a;->f:Z

    if-nez v1, :cond_2

    invoke-static {p0}, Ln/a;->c(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "isMdeFeatureSupported() : start check isSesFeatureAvailable"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lv/f;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sput-boolean v2, Ln/a;->g:Z

    goto :goto_0

    :cond_0
    sput-boolean v3, Ln/a;->g:Z

    const-string p0, "isSesFeatureAvailable() : false"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sput-boolean v3, Ln/a;->g:Z

    :goto_0
    sput-boolean v2, Ln/a;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMdeFeatureSupported() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMdeFeatureSupported() : isMdeChecked "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Ln/a;->f:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMdeSupported : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Ln/a;->g:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Ln/a;->g:Z

    return p0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ConditionalFeature"

    if-nez p0, :cond_0

    const-string p0, "isSesAvailable# null context"

    :goto_0
    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_1

    const-string p0, "isSesAvailable# Less than O os"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileService;->isAgentInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "isSesAvailable# SeMobileService not installed"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/sdk/mobileservice/SeMobileService;->isAgentEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "isSesAvailable# SeMobileService disabled"

    goto :goto_0

    :cond_3
    const-string p0, "isSesAvailable# true"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Ln/a;->k:Z

    return v0
.end method

.method public static t(Landroid/content/res/Configuration;)V
    .locals 2

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged# oldUiMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ln/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newUiMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionalFeature"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Ln/a;->h:I

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Ln/a;->f:Z

    sput-boolean v0, Ln/a;->i:Z

    sput p0, Ln/a;->h:I

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->initPreferenceMDESupported()V

    :cond_0
    return-void
.end method

.method public static x(Z)V
    .locals 0

    sput-boolean p0, Ln/a;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    sput-boolean p0, Ln/a;->f:Z

    sput-boolean p0, Ln/a;->i:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ln/a;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ln/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ln/a;->s()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoSyncPossible() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConditionalFeature"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public f()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConditionalFeature"

    if-eqz v0, :cond_0

    const-string v0, "isDataCallNotLimitedForApp() : National disaster net!"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "isDataCallNotLimitedForApp() : Not available data network!"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "isDataCallNotLimitedForApp() : China model and not app permitted!"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, Ln/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 3

    sget-boolean v0, Ln/a;->d:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConditionalFeature"

    if-eqz v0, :cond_0

    const-string v0, "isImportFeatureSupported : false <- National disaster net!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ln/a;->v(Z)V

    :cond_0
    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasSamsungAccountPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ln/a;->v(Z)V

    const-string v0, "isImportFeatureSupported : false <- No account package!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ln/a;->u(Z)V

    :cond_2
    sget-boolean v0, Ln/a;->e:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Ln/a;->j(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized k()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 6

    sget-boolean v0, Ln/a;->c:Z

    iget-object v1, p0, Ln/a;->a:Landroid/content/Context;

    const-string v2, "Settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lc3/q;->g(Landroid/content/Context;)Z

    move-result v2

    const-string v4, "ConditionalFeature"

    const-string v5, "settings_sync_notes"

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lc3/l;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Ln/a;->w(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSyncEnableMode() without cloudSetting : isSync = "

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lc3/l;->f(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Ln/a;->w(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSyncEnableMode() with cloudSetting : isSync = "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Ln/a;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ln/a;->a:Landroid/content/Context;

    sget-boolean v2, Ln/a;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lc3/q;->t(Landroid/content/Context;Ljava/lang/Boolean;)V

    iget-object v1, p0, Ln/a;->a:Landroid/content/Context;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lc3/q;->o(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lc3/l;->f(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Ln/a;->w(Z)V

    :goto_2
    sget-boolean v1, Ln/a;->c:Z

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSyncEnableMode() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Ln/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Ln/a;->c:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedSync(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public q(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedSync(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public r()Z
    .locals 3

    invoke-virtual {p0}, Ln/a;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object v0

    invoke-virtual {v0}, Lc2/a;->e()Z

    move-result v0

    const-string v2, "ConditionalFeature"

    if-nez v0, :cond_1

    const-string v0, "isSyncPossibleExplicitly() : Permission is not granted!"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "isSyncPossibleExplicitly() : Not logined!"

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 2

    invoke-static {}, Lc3/k;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ln/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final u(Z)V
    .locals 1

    const-class v0, Ln/a;

    monitor-enter v0

    :try_start_0
    sput-boolean p1, Ln/a;->d:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v(Z)V
    .locals 1

    const-class v0, Ln/a;

    monitor-enter v0

    :try_start_0
    sput-boolean p1, Ln/a;->e:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final w(Z)V
    .locals 1

    const-class v0, Ln/a;

    monitor-enter v0

    :try_start_0
    sput-boolean p1, Ln/a;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
