.class public final LcoeditCoreInternalMessage/WorkspaceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/WorkspaceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreInternalMessage/WorkspaceRequest;",
        "LcoeditCoreInternalMessage/WorkspaceRequest$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/WorkspaceRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

.field public static final OWNER_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreInternalMessage/WorkspaceRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final UUID_FIELD_NUMBER:I = 0x2


# instance fields
.field private cid_:Ljava/lang/String;

.field private ownerId_:Ljava/lang/String;

.field private uuid_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-direct {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;-><init>()V

    sput-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    const-class v1, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->ownerId_:Ljava/lang/String;

    iput-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->uuid_:Ljava/lang/String;

    iput-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->cid_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreInternalMessage/WorkspaceRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/WorkspaceRequest;->clearCid()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreInternalMessage/WorkspaceRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/WorkspaceRequest;->clearOwnerId()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreInternalMessage/WorkspaceRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/WorkspaceRequest;->clearUuid()V

    return-void
.end method

.method private clearCid()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/WorkspaceRequest;->getDefaultInstance()LcoeditCoreInternalMessage/WorkspaceRequest;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->cid_:Ljava/lang/String;

    return-void
.end method

.method private clearOwnerId()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/WorkspaceRequest;->getDefaultInstance()LcoeditCoreInternalMessage/WorkspaceRequest;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->ownerId_:Ljava/lang/String;

    return-void
.end method

.method private clearUuid()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/WorkspaceRequest;->getDefaultInstance()LcoeditCoreInternalMessage/WorkspaceRequest;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreInternalMessage/WorkspaceRequest;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->uuid_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreInternalMessage/WorkspaceRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->setCid(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreInternalMessage/WorkspaceRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->setCidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreInternalMessage/WorkspaceRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->setOwnerId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreInternalMessage/WorkspaceRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->setOwnerIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreInternalMessage/WorkspaceRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreInternalMessage/WorkspaceRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreInternalMessage/WorkspaceRequest;->setUuidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object v0
.end method

.method public static newBuilder()LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreInternalMessage/WorkspaceRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreInternalMessage/WorkspaceRequest;)LcoeditCoreInternalMessage/WorkspaceRequest$Builder;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreInternalMessage/WorkspaceRequest;
    .locals 1

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreInternalMessage/WorkspaceRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCid(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->cid_:Ljava/lang/String;

    return-void
.end method

.method private setCidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->cid_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->ownerId_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->ownerId_:Ljava/lang/String;

    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->uuid_:Ljava/lang/String;

    return-void
.end method

.method private setUuidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->uuid_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreInternalMessage/WorkspaceRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, LcoeditCoreInternalMessage/WorkspaceRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreInternalMessage/WorkspaceRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreInternalMessage/WorkspaceRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreInternalMessage/WorkspaceRequest;->PARSER:Lcom/google/protobuf/Parser;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerId_"

    aput-object v0, p1, p3

    const-string p3, "uuid_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cid_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    sget-object p3, LcoeditCoreInternalMessage/WorkspaceRequest;->DEFAULT_INSTANCE:LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreInternalMessage/WorkspaceRequest$Builder;

    invoke-direct {p1, p3}, LcoeditCoreInternalMessage/WorkspaceRequest$Builder;-><init>(LcoeditCoreInternalMessage/g;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreInternalMessage/WorkspaceRequest;

    invoke-direct {p1}, LcoeditCoreInternalMessage/WorkspaceRequest;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->cid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->cid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->ownerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->ownerId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->uuid_:Ljava/lang/String;

    return-object v0
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreInternalMessage/WorkspaceRequest;->uuid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
