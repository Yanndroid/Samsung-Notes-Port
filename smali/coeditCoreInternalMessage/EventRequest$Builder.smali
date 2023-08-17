.class public final LcoeditCoreInternalMessage/EventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/EventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreInternalMessage/EventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreInternalMessage/EventRequest;",
        "LcoeditCoreInternalMessage/EventRequest$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/EventRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/EventRequest;->i()LcoeditCoreInternalMessage/EventRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreInternalMessage/c;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/EventRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEventType()LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/EventRequest;->a(LcoeditCoreInternalMessage/EventRequest;)V

    return-object p0
.end method

.method public clearTargetUid()LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/EventRequest;->b(LcoeditCoreInternalMessage/EventRequest;)V

    return-object p0
.end method

.method public clearWritable()LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/EventRequest;->c(LcoeditCoreInternalMessage/EventRequest;)V

    return-object p0
.end method

.method public getEventType()LcoeditCoreMessage/EventType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/EventRequest;->getEventType()LcoeditCoreMessage/EventType;

    move-result-object v0

    return-object v0
.end method

.method public getEventTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/EventRequest;->getEventTypeValue()I

    move-result v0

    return v0
.end method

.method public getTargetUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/EventRequest;->getTargetUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetUidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/EventRequest;->getTargetUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWritable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/EventRequest;->getWritable()Z

    move-result v0

    return v0
.end method

.method public setEventType(LcoeditCoreMessage/EventType;)LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/EventRequest;->d(LcoeditCoreInternalMessage/EventRequest;LcoeditCoreMessage/EventType;)V

    return-object p0
.end method

.method public setEventTypeValue(I)LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/EventRequest;->e(LcoeditCoreInternalMessage/EventRequest;I)V

    return-object p0
.end method

.method public setTargetUid(Ljava/lang/String;)LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/EventRequest;->f(LcoeditCoreInternalMessage/EventRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetUidBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/EventRequest;->g(LcoeditCoreInternalMessage/EventRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWritable(Z)LcoeditCoreInternalMessage/EventRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/EventRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/EventRequest;->h(LcoeditCoreInternalMessage/EventRequest;Z)V

    return-object p0
.end method
