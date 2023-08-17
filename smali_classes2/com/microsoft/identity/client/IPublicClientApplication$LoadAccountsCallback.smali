.class public interface abstract Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;
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
    name = "LoadAccountsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError<",
        "Ljava/util/List<",
        "Lcom/microsoft/identity/client/IAccount;",
        ">;",
        "Lcom/microsoft/identity/client/exception/MsalException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/microsoft/identity/client/exception/MsalException;)V
.end method

.method public abstract onTaskCompleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/client/IAccount;",
            ">;)V"
        }
    .end annotation
.end method
