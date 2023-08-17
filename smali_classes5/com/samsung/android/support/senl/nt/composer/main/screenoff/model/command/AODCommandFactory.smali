.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public makeAODCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "pin_pre_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/PreResult;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/PreResult;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->setUri(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "pin_result_apply"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultApply;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultApply;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->setUri(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "pin_result_home"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultHome;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultHome;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->setUri(Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "pin_result_back"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultBack;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultBack;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->setUri(Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v0, "pin_result_pause"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultPause;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultPause;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->setUri(Ljava/lang/String;)V

    return-object p1

    :cond_4
    const-string v0, "pin_result_lcd_off"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultLcdOff;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultLcdOff;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->setUri(Ljava/lang/String;)V

    return-object p1

    :cond_5
    const-string v0, "pin_result_reject"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultReject;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/ResultReject;-><init>()V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->setUri(Ljava/lang/String;)V

    return-object v0

    :cond_6
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AODNone;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/AODNone;-><init>()V

    return-object p1
.end method
