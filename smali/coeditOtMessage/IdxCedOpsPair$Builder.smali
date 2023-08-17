.class public final LcoeditOtMessage/IdxCedOpsPair$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditOtMessage/IdxCedOpsPairOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOtMessage/IdxCedOpsPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditOtMessage/IdxCedOpsPair;",
        "LcoeditOtMessage/IdxCedOpsPair$Builder;",
        ">;",
        "LcoeditOtMessage/IdxCedOpsPairOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditOtMessage/IdxCedOpsPair;->f()LcoeditOtMessage/IdxCedOpsPair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditOtMessage/c;)V
    .locals 0

    invoke-direct {p0}, LcoeditOtMessage/IdxCedOpsPair$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCedOps()LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0}, LcoeditOtMessage/IdxCedOpsPair;->a(LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public clearIdx()LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0}, LcoeditOtMessage/IdxCedOpsPair;->b(LcoeditOtMessage/IdxCedOpsPair;)V

    return-object p0
.end method

.method public getCedOps()LcoeditOperation/CedOps;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v0}, LcoeditOtMessage/IdxCedOpsPair;->getCedOps()LcoeditOperation/CedOps;

    move-result-object v0

    return-object v0
.end method

.method public getIdx()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v0}, LcoeditOtMessage/IdxCedOpsPair;->getIdx()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCedOps()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {v0}, LcoeditOtMessage/IdxCedOpsPair;->hasCedOps()Z

    move-result v0

    return v0
.end method

.method public mergeCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/IdxCedOpsPair;->c(LcoeditOtMessage/IdxCedOpsPair;LcoeditOperation/CedOps;)V

    return-object p0
.end method

.method public setCedOps(LcoeditOperation/CedOps$Builder;)LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CedOps;

    invoke-static {v0, p1}, LcoeditOtMessage/IdxCedOpsPair;->d(LcoeditOtMessage/IdxCedOpsPair;LcoeditOperation/CedOps;)V

    return-object p0
.end method

.method public setCedOps(LcoeditOperation/CedOps;)LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1}, LcoeditOtMessage/IdxCedOpsPair;->d(LcoeditOtMessage/IdxCedOpsPair;LcoeditOperation/CedOps;)V

    return-object p0
.end method

.method public setIdx(J)LcoeditOtMessage/IdxCedOpsPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditOtMessage/IdxCedOpsPair;

    invoke-static {v0, p1, p2}, LcoeditOtMessage/IdxCedOpsPair;->e(LcoeditOtMessage/IdxCedOpsPair;J)V

    return-object p0
.end method
