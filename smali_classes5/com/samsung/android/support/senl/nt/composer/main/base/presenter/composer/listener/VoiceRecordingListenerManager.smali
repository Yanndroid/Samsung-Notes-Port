.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStopVoiceRecordingActionReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;

.field private mVoiceOnStateChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VoiceRecordingListenerManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mVoiceOnStateChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenToastActionListenerImpl;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->setToastActionListener(Lcom/samsung/android/sdk/pen/engine/SpenToastActionListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mStopVoiceRecordingActionReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mStopVoiceRecordingActionReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mStopVoiceRecordingActionReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mStopVoiceRecordingActionReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mVoiceOnStateChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->removeStateListener(Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnStateChanged;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mVoiceOnStateChangedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceOnStateChangedListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mStopVoiceRecordingActionReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mStopVoiceRecordingActionReceiver:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/StopVoiceRecordingActionReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/VoiceRecordingListenerManager;->mContext:Landroid/content/Context;

    return-void
.end method
