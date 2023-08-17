.class public final LcoeditOperation/CoeditOperation$KeyValuePair$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$KeyValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$KeyValuePair;",
        "LcoeditOperation/CoeditOperation$KeyValuePair$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$KeyValuePairOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$KeyValuePair;->g()LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/e;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$KeyValuePair$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKey()LcoeditOperation/CoeditOperation$KeyValuePair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->a(LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public clearValue()LcoeditOperation/CoeditOperation$KeyValuePair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->b(LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$KeyValuePair;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValuePair;->c(LcoeditOperation/CoeditOperation$KeyValuePair;Ljava/lang/String;)V

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValuePair;->d(LcoeditOperation/CoeditOperation$KeyValuePair;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValuePair;->e(LcoeditOperation/CoeditOperation$KeyValuePair;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)LcoeditOperation/CoeditOperation$KeyValuePair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$KeyValuePair;->f(LcoeditOperation/CoeditOperation$KeyValuePair;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
