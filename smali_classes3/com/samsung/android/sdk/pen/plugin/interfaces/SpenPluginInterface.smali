.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenNativeHandleInterface;


# virtual methods
.method public abstract getPrivateKeyHint()Ljava/lang/String;
.end method

.method public abstract getProperty(Landroid/os/Bundle;)V
.end method

.method public abstract onLoad(Landroid/content/Context;)V
.end method

.method public abstract onUnload()V
.end method

.method public abstract setProperty(Landroid/os/Bundle;)V
.end method

.method public abstract unlock(Ljava/lang/String;)Z
.end method
