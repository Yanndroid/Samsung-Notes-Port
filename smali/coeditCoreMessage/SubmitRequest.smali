.class public final LcoeditCoreMessage/SubmitRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/SubmitRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/SubmitRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/SubmitRequest;",
        "LcoeditCoreMessage/SubmitRequest$Builder;",
        ">;",
        "LcoeditCoreMessage/SubmitRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANNEL_ID_FIELD_NUMBER:I = 0x2

.field public static final CHECKPOINT_COEDITOP_PAIR_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_CMD_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

.field public static final IS_VALIDATE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/SubmitRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKSPACE_VERSION_FIELD_NUMBER:I = 0x5


# instance fields
.field private channelId_:Ljava/lang/String;

.field private checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

.field private clientCmd_:I

.field private isValidate_:Z

.field private workspaceVersion_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/SubmitRequest;

    invoke-direct {v0}, LcoeditCoreMessage/SubmitRequest;-><init>()V

    sput-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    const-class v1, LcoeditCoreMessage/SubmitRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreMessage/SubmitRequest;->channelId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/SubmitRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitRequest;->clearChannelId()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/SubmitRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitRequest;->clearCheckpointCoeditopPair()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/SubmitRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitRequest;->clearClientCmd()V

    return-void
.end method

.method private clearChannelId()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/SubmitRequest;->getDefaultInstance()LcoeditCoreMessage/SubmitRequest;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/SubmitRequest;->getChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/SubmitRequest;->channelId_:Ljava/lang/String;

    return-void
.end method

.method private clearCheckpointCoeditopPair()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/SubmitRequest;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-void
.end method

.method private clearClientCmd()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditCoreMessage/SubmitRequest;->clientCmd_:I

    return-void
.end method

.method private clearIsValidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LcoeditCoreMessage/SubmitRequest;->isValidate_:Z

    return-void
.end method

.method private clearWorkspaceVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/SubmitRequest;->workspaceVersion_:J

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/SubmitRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitRequest;->clearIsValidate()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/SubmitRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitRequest;->clearWorkspaceVersion()V

    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/SubmitRequest;LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitRequest;->mergeCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/SubmitRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitRequest;->setChannelId(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/SubmitRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitRequest;->setChannelIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreMessage/SubmitRequest;LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitRequest;->setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-void
.end method

.method public static bridge synthetic j(LcoeditCoreMessage/SubmitRequest;LcoeditCoreMessage/ClientCmd;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitRequest;->setClientCmd(LcoeditCoreMessage/ClientCmd;)V

    return-void
.end method

.method public static bridge synthetic k(LcoeditCoreMessage/SubmitRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitRequest;->setClientCmdValue(I)V

    return-void
.end method

.method public static bridge synthetic l(LcoeditCoreMessage/SubmitRequest;Z)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitRequest;->setIsValidate(Z)V

    return-void
.end method

.method public static bridge synthetic m(LcoeditCoreMessage/SubmitRequest;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/SubmitRequest;->setWorkspaceVersion(J)V

    return-void
.end method

.method private mergeCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/SubmitRequest;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDefaultInstance()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/SubmitRequest;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->newBuilder(LcoeditCoreMessage/CheckPointCoeditOpPair;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/CheckPointCoeditOpPair;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/SubmitRequest;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-void
.end method

.method public static bridge synthetic n()LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    return-object v0
.end method

.method public static newBuilder()LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/SubmitRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/SubmitRequest;)LcoeditCoreMessage/SubmitRequest$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/SubmitRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChannelId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/SubmitRequest;->channelId_:Ljava/lang/String;

    return-void
.end method

.method private setChannelIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/SubmitRequest;->channelId_:Ljava/lang/String;

    return-void
.end method

.method private setCheckpointCoeditopPair(LcoeditCoreMessage/CheckPointCoeditOpPair;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/SubmitRequest;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    return-void
.end method

.method private setClientCmd(LcoeditCoreMessage/ClientCmd;)V
    .locals 0

    invoke-virtual {p1}, LcoeditCoreMessage/ClientCmd;->getNumber()I

    move-result p1

    iput p1, p0, LcoeditCoreMessage/SubmitRequest;->clientCmd_:I

    return-void
.end method

.method private setClientCmdValue(I)V
    .locals 0

    iput p1, p0, LcoeditCoreMessage/SubmitRequest;->clientCmd_:I

    return-void
.end method

.method private setIsValidate(Z)V
    .locals 0

    iput-boolean p1, p0, LcoeditCoreMessage/SubmitRequest;->isValidate_:Z

    return-void
.end method

.method private setWorkspaceVersion(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/SubmitRequest;->workspaceVersion_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/SubmitRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/SubmitRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/SubmitRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/SubmitRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/SubmitRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "clientCmd_"

    aput-object v0, p1, p3

    const-string p3, "channelId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "checkpointCoeditopPair_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "isValidate_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "workspaceVersion_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003\t\u0004\u0007\u0005\u0002"

    sget-object p3, LcoeditCoreMessage/SubmitRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/SubmitRequest$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/SubmitRequest$Builder;-><init>(LcoeditCoreMessage/p;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/SubmitRequest;

    invoke-direct {p1}, LcoeditCoreMessage/SubmitRequest;-><init>()V

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

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/SubmitRequest;->channelId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/SubmitRequest;->channelId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCheckpointCoeditopPair()LcoeditCoreMessage/CheckPointCoeditOpPair;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/SubmitRequest;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDefaultInstance()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClientCmd()LcoeditCoreMessage/ClientCmd;
    .locals 1

    iget v0, p0, LcoeditCoreMessage/SubmitRequest;->clientCmd_:I

    invoke-static {v0}, LcoeditCoreMessage/ClientCmd;->forNumber(I)LcoeditCoreMessage/ClientCmd;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LcoeditCoreMessage/ClientCmd;->UNRECOGNIZED:LcoeditCoreMessage/ClientCmd;

    :cond_0
    return-object v0
.end method

.method public getClientCmdValue()I
    .locals 1

    iget v0, p0, LcoeditCoreMessage/SubmitRequest;->clientCmd_:I

    return v0
.end method

.method public getIsValidate()Z
    .locals 1

    iget-boolean v0, p0, LcoeditCoreMessage/SubmitRequest;->isValidate_:Z

    return v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/SubmitRequest;->workspaceVersion_:J

    return-wide v0
.end method

.method public hasCheckpointCoeditopPair()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/SubmitRequest;->checkpointCoeditopPair_:LcoeditCoreMessage/CheckPointCoeditOpPair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
