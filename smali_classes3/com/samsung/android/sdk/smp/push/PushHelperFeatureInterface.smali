.class interface abstract Lcom/samsung/android/sdk/smp/push/PushHelperFeatureInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract handleBootOrUpdateEvent(Landroid/content/Context;)V
.end method

.method public abstract handlePushRegistrationFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract initializePushPlatform(Landroid/content/Context;)V
.end method

.method public abstract isValidPushRegistration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract register(Landroid/content/Context;)V
.end method

.method public abstract switchPushWhenSppDeactivated(Landroid/content/Context;)V
.end method

.method public abstract validateAndSwitchPushPlatform(Landroid/content/Context;)Z
.end method
