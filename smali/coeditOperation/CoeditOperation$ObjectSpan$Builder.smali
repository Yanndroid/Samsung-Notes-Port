.class public final LcoeditOperation/CoeditOperation$ObjectSpan$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOperation/CoeditOperation$ObjectSpanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation$ObjectSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOperation/CoeditOperation$ObjectSpan;",
        "LcoeditOperation/CoeditOperation$ObjectSpan$Builder;",
        ">;",
        "LcoeditOperation/CoeditOperation$ObjectSpanOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOperation/CoeditOperation$ObjectSpan;->d()LcoeditOperation/CoeditOperation$ObjectSpan;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOperation/g;)V
    .locals 0

    invoke-direct {p0}, LcoeditOperation/CoeditOperation$ObjectSpan$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearObjectSpan()LcoeditOperation/CoeditOperation$ObjectSpan$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-static {v0}, LcoeditOperation/CoeditOperation$ObjectSpan;->a(LcoeditOperation/CoeditOperation$ObjectSpan;)V

    return-object p0
.end method

.method public getObjectSpan()LcoeditOperation/CoeditOperation$KeyValuePair;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ObjectSpan;->getObjectSpan()LcoeditOperation/CoeditOperation$KeyValuePair;

    move-result-object v0

    return-object v0
.end method

.method public hasObjectSpan()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-virtual {v0}, LcoeditOperation/CoeditOperation$ObjectSpan;->hasObjectSpan()Z

    move-result v0

    return v0
.end method

.method public mergeObjectSpan(LcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ObjectSpan$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ObjectSpan;->b(LcoeditOperation/CoeditOperation$ObjectSpan;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public setObjectSpan(LcoeditOperation/CoeditOperation$KeyValuePair$Builder;)LcoeditOperation/CoeditOperation$ObjectSpan$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation$KeyValuePair;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ObjectSpan;->c(LcoeditOperation/CoeditOperation$ObjectSpan;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method

.method public setObjectSpan(LcoeditOperation/CoeditOperation$KeyValuePair;)LcoeditOperation/CoeditOperation$ObjectSpan$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOperation/CoeditOperation$ObjectSpan;

    invoke-static {v0, p1}, LcoeditOperation/CoeditOperation$ObjectSpan;->c(LcoeditOperation/CoeditOperation$ObjectSpan;LcoeditOperation/CoeditOperation$KeyValuePair;)V

    return-object p0
.end method
