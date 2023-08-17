.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;
    }
.end annotation


# virtual methods
.method public abstract getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;
.end method

.method public abstract getJwtMode(Ljava/lang/String;)I
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract isAlreadySnapReleased()Z
.end method

.method public abstract onContentFileUploadError(I)V
.end method

.method public abstract pauseConcurrency(Ljava/lang/String;)I
.end method

.method public abstract reconnect(Ljava/lang/String;)V
.end method

.method public abstract resumeConcurrency(Ljava/lang/String;)I
.end method
