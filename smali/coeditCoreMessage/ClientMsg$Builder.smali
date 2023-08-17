.class public final LcoeditCoreMessage/ClientMsg$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ClientMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/ClientMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/ClientMsg;",
        "LcoeditCoreMessage/ClientMsg$Builder;",
        ">;",
        "LcoeditCoreMessage/ClientMsgOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ClientMsg;->g()LcoeditCoreMessage/ClientMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/e;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ClientMsg$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChannelId()LcoeditCoreMessage/ClientMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-static {v0}, LcoeditCoreMessage/ClientMsg;->a(LcoeditCoreMessage/ClientMsg;)V

    return-object p0
.end method

.method public clearClientCmd()LcoeditCoreMessage/ClientMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-static {v0}, LcoeditCoreMessage/ClientMsg;->b(LcoeditCoreMessage/ClientMsg;)V

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ClientMsg;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ClientMsg;->getChannelIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClientCmd()LcoeditCoreMessage/ClientCmd;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ClientMsg;->getClientCmd()LcoeditCoreMessage/ClientCmd;

    move-result-object v0

    return-object v0
.end method

.method public getClientCmdValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-virtual {v0}, LcoeditCoreMessage/ClientMsg;->getClientCmdValue()I

    move-result v0

    return v0
.end method

.method public setChannelId(Ljava/lang/String;)LcoeditCoreMessage/ClientMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ClientMsg;->c(LcoeditCoreMessage/ClientMsg;Ljava/lang/String;)V

    return-object p0
.end method

.method public setChannelIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ClientMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ClientMsg;->d(LcoeditCoreMessage/ClientMsg;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setClientCmd(LcoeditCoreMessage/ClientCmd;)LcoeditCoreMessage/ClientMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ClientMsg;->e(LcoeditCoreMessage/ClientMsg;LcoeditCoreMessage/ClientCmd;)V

    return-object p0
.end method

.method public setClientCmdValue(I)LcoeditCoreMessage/ClientMsg$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ClientMsg;

    invoke-static {v0, p1}, LcoeditCoreMessage/ClientMsg;->f(LcoeditCoreMessage/ClientMsg;I)V

    return-object p0
.end method
