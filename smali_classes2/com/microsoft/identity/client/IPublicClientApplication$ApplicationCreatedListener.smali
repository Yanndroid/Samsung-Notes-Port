.class public interface abstract Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/IPublicClientApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationCreatedListener"
.end annotation


# virtual methods
.method public abstract onCreated(Lcom/microsoft/identity/client/IPublicClientApplication;)V
.end method

.method public abstract onError(Lcom/microsoft/identity/client/exception/MsalException;)V
.end method
