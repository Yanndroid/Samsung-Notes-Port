.class public interface abstract Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract onDisconnected(Landroid/content/ComponentName;)V
.end method

.method public abstract onError()V
.end method
