.class public final LcoeditCoreMessage/PolicyInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/PolicyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/PolicyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/PolicyInfo;",
        "LcoeditCoreMessage/PolicyInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/PolicyInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/PolicyInfo;->e()LcoeditCoreMessage/PolicyInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/k;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/PolicyInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMaxConnectableDeviceCnt()LcoeditCoreMessage/PolicyInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PolicyInfo;

    invoke-static {v0}, LcoeditCoreMessage/PolicyInfo;->a(LcoeditCoreMessage/PolicyInfo;)V

    return-object p0
.end method

.method public clearMaxEditableDeviceCnt()LcoeditCoreMessage/PolicyInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PolicyInfo;

    invoke-static {v0}, LcoeditCoreMessage/PolicyInfo;->b(LcoeditCoreMessage/PolicyInfo;)V

    return-object p0
.end method

.method public getMaxConnectableDeviceCnt()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PolicyInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/PolicyInfo;->getMaxConnectableDeviceCnt()I

    move-result v0

    return v0
.end method

.method public getMaxEditableDeviceCnt()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PolicyInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/PolicyInfo;->getMaxEditableDeviceCnt()I

    move-result v0

    return v0
.end method

.method public setMaxConnectableDeviceCnt(I)LcoeditCoreMessage/PolicyInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PolicyInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/PolicyInfo;->c(LcoeditCoreMessage/PolicyInfo;I)V

    return-object p0
.end method

.method public setMaxEditableDeviceCnt(I)LcoeditCoreMessage/PolicyInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PolicyInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/PolicyInfo;->d(LcoeditCoreMessage/PolicyInfo;I)V

    return-object p0
.end method
