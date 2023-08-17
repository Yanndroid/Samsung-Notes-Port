.class public interface abstract Lcom/samsung/android/penup/internal/sso/IPenupAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penup/internal/sso/IPenupAuthenticator$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract complete(Ljava/lang/String;)V
.end method

.method public abstract registerCallback(Lcom/samsung/android/penup/internal/sso/IPenupAuthCallback;)Z
.end method

.method public abstract requestAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterCallback(Lcom/samsung/android/penup/internal/sso/IPenupAuthCallback;)Z
.end method
