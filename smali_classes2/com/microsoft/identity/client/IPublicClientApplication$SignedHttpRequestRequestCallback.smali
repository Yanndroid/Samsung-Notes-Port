.class public interface abstract Lcom/microsoft/identity/client/IPublicClientApplication$SignedHttpRequestRequestCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/IPublicClientApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignedHttpRequestRequestCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
        "Ljava/lang/String;",
        "Lcom/microsoft/identity/client/exception/MsalException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/microsoft/identity/client/exception/MsalException;)V
.end method

.method public abstract onTaskCompleted(Ljava/lang/String;)V
.end method
