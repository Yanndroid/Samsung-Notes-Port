.class public interface abstract Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetAccountCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
        "Lcom/microsoft/identity/client/IAccount;",
        "Lcom/microsoft/identity/client/exception/MsalException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/microsoft/identity/client/exception/MsalException;)V
.end method

.method public abstract onTaskCompleted(Lcom/microsoft/identity/client/IAccount;)V
.end method
