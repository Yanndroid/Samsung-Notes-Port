.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionContract$PresenterContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteFunctionContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PresenterContract"
.end annotation


# virtual methods
.method public abstract getRemoteType()I
    .annotation runtime Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/remotefunction/RemoteConstant$RemoteSenderType;
    .end annotation
.end method

.method public abstract isRemotedFunctionCall()Z
.end method

.method public varargs abstract remoteFunctionCall(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract remoteFunctionSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
