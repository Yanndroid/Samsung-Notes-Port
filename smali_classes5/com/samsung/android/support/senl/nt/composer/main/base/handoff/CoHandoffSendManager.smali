.class public Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;


# instance fields
.field private mLastSendUuid:Ljava/lang/String;

.field private mManualSave:Z

.field private mSendSuccessContentObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CoHandoffSendManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mManualSave:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mLastSendUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;

    return-object v0
.end method

.method private registerHandoffContentObserverOnlyOneTime()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mSendSuccessContentObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string v1, "registerHandoffContentObserverOnlyOneTime#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mSendSuccessContentObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mSendSuccessContentObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->registerContentObserverForSendingSuccess(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mManualSave:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->disableHandoff()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string v0, "clear#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string v0, "disable# uuid is not matched"

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->disableHandoff()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string v0, "disable#"

    goto :goto_0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public send(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandOffData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mManualSave:Z

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string p2, "send# fail: manual save mode"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mLastSendUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->registerHandoffContentObserverOnlyOneTime()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandOffData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    :try_start_0
    const-string p2, "sdoc_uuid"

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "activity_type"

    const-string v0, "Composer"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->enableHandoff(Lorg/json/JSONObject;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string p2, "send#"

    goto :goto_0

    :cond_2
    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string p2, "send# uuid is not matched"

    goto :goto_0
.end method

.method public setUuid(Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->disableHandoff()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string v1, "setUuid# disable handoff"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mManualSave:Z

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string v1, "setUuid# disable handoff in manual save mode"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->disableHandoff()V

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mManualSave:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public unregisterHandoffContentObserver(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mSendSuccessContentObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isRunningComposer(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->TAG:Ljava/lang/String;

    const-string v0, "unregisterHandoffContentObserver#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mSendSuccessContentObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager;->mSendSuccessContentObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandoffSendManager$SendSuccessContentObserver;

    :cond_1
    return-void
.end method
