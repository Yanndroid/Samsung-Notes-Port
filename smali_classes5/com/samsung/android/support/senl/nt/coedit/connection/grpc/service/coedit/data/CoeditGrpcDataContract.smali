.class public interface abstract Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcDataContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract downloadContentFile(LcoeditCoreMessage/ObjectInfo;)V
.end method

.method public abstract getWorkspaceId()Ljava/lang/String;
.end method

.method public abstract isConcurrencyPausedByNetwork()Z
.end method

.method public abstract notify(LcoeditCoreMessage/ServerMsg;)V
.end method

.method public abstract reconnect(Ljava/lang/String;)V
.end method

.method public abstract releaseLock(Ljava/lang/String;)V
.end method

.method public abstract setPausedByNetwork(Ljava/lang/String;)V
.end method

.method public abstract uploadContentFile(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract wakeConcurrencyPool()V
.end method
