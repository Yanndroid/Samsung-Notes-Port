.class public interface abstract Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub;,
        Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onProgress(Ljava/lang/String;I)V
.end method

.method public abstract onStart(Ljava/lang/String;)V
.end method
