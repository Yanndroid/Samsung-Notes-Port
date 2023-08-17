.class public final LcoeditCoreMessage/EventInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/EventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/EventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/EventInfo;",
        "LcoeditCoreMessage/EventInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/EventInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/EventInfo;->f()LcoeditCoreMessage/EventInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/g;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/EventInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEventType()LcoeditCoreMessage/EventInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-static {v0}, LcoeditCoreMessage/EventInfo;->a(LcoeditCoreMessage/EventInfo;)V

    return-object p0
.end method

.method public clearWritable()LcoeditCoreMessage/EventInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-static {v0}, LcoeditCoreMessage/EventInfo;->b(LcoeditCoreMessage/EventInfo;)V

    return-object p0
.end method

.method public getEventType()LcoeditCoreMessage/EventType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/EventInfo;->getEventType()LcoeditCoreMessage/EventType;

    move-result-object v0

    return-object v0
.end method

.method public getEventTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/EventInfo;->getEventTypeValue()I

    move-result v0

    return v0
.end method

.method public getWritable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/EventInfo;->getWritable()Z

    move-result v0

    return v0
.end method

.method public setEventType(LcoeditCoreMessage/EventType;)LcoeditCoreMessage/EventInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/EventInfo;->c(LcoeditCoreMessage/EventInfo;LcoeditCoreMessage/EventType;)V

    return-object p0
.end method

.method public setEventTypeValue(I)LcoeditCoreMessage/EventInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/EventInfo;->d(LcoeditCoreMessage/EventInfo;I)V

    return-object p0
.end method

.method public setWritable(Z)LcoeditCoreMessage/EventInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/EventInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/EventInfo;->e(LcoeditCoreMessage/EventInfo;Z)V

    return-object p0
.end method
