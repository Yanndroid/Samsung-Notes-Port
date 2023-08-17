.class public final LcoeditCoreMessage/SubmitResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/SubmitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/SubmitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/SubmitResponse;",
        "LcoeditCoreMessage/SubmitResponse$Builder;",
        ">;",
        "LcoeditCoreMessage/SubmitResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/SubmitResponse;->f()LcoeditCoreMessage/SubmitResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/q;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCheckpoint()LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0}, LcoeditCoreMessage/SubmitResponse;->a(LcoeditCoreMessage/SubmitResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0}, LcoeditCoreMessage/SubmitResponse;->b(LcoeditCoreMessage/SubmitResponse;)V

    return-object p0
.end method

.method public getCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitResponse;->getCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitResponse;->c(LcoeditCoreMessage/SubmitResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setCheckpoint(J)LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/SubmitResponse;->d(LcoeditCoreMessage/SubmitResponse;J)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitResponse;->e(LcoeditCoreMessage/SubmitResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/SubmitResponse;->e(LcoeditCoreMessage/SubmitResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method
