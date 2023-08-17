.class public interface abstract Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Stub;,
        Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Default;
    }
.end annotation


# virtual methods
.method public abstract cancel(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
.end method

.method public abstract getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;
.end method

.method public abstract showSetting(Ljava/lang/String;)V
.end method

.method public abstract start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
.end method

.method public abstract switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;
.end method
