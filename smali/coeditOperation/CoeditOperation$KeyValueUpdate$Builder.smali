.class public final LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$KeyValueUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$KeyValueUpdate;",
        "LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$KeyValueUpdateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->j()LcoeditOperation/CoeditOperation$KeyValueUpdate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/f;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKey()LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->a(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public clearNewValue()LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->b(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public clearOldValue()LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->c(LcoeditOperation/CoeditOperation$KeyValueUpdate;)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getNewValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getNewValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getOldValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->getOldValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->d(LcoeditOperation/CoeditOperation$KeyValueUpdate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->e(LcoeditOperation/CoeditOperation$KeyValueUpdate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNewValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->f(LcoeditOperation/CoeditOperation$KeyValueUpdate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNewValueBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->g(LcoeditOperation/CoeditOperation$KeyValueUpdate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOldValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->h(LcoeditOperation/CoeditOperation$KeyValueUpdate;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOldValueBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$KeyValueUpdate$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValueUpdate;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValueUpdate;->i(LcoeditOperation/CoeditOperation$KeyValueUpdate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
