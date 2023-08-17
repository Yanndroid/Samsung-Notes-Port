.class public final LcoeditCoreMessage/CatchupRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/CatchupRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/CatchupRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/CatchupRequest;",
        "LcoeditCoreMessage/CatchupRequest$Builder;",
        ">;",
        "LcoeditCoreMessage/CatchupRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CATCHUP_TYPE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

.field public static final END_CHECKPOINT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/CatchupRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_CHECKPOINT_FIELD_NUMBER:I = 0x1

.field public static final WORKSPACE_VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private catchupType_:I

.field private endCheckpoint_:J

.field private startCheckpoint_:J

.field private workspaceVersion_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/CatchupRequest;

    invoke-direct {v0}, LcoeditCoreMessage/CatchupRequest;-><init>()V

    sput-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    const-class v1, LcoeditCoreMessage/CatchupRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/CatchupRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CatchupRequest;->clearCatchupType()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/CatchupRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CatchupRequest;->clearEndCheckpoint()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/CatchupRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CatchupRequest;->clearStartCheckpoint()V

    return-void
.end method

.method private clearCatchupType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditCoreMessage/CatchupRequest;->catchupType_:I

    return-void
.end method

.method private clearEndCheckpoint()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/CatchupRequest;->endCheckpoint_:J

    return-void
.end method

.method private clearStartCheckpoint()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/CatchupRequest;->startCheckpoint_:J

    return-void
.end method

.method private clearWorkspaceVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/CatchupRequest;->workspaceVersion_:J

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/CatchupRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CatchupRequest;->clearWorkspaceVersion()V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/CatchupRequest;LcoeditCoreMessage/CatchupType;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CatchupRequest;->setCatchupType(LcoeditCoreMessage/CatchupType;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/CatchupRequest;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/CatchupRequest;->setCatchupTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/CatchupRequest;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CatchupRequest;->setEndCheckpoint(J)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/CatchupRequest;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CatchupRequest;->setStartCheckpoint(J)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreMessage/CatchupRequest;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/CatchupRequest;->setWorkspaceVersion(J)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    return-object v0
.end method

.method public static newBuilder()LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/CatchupRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/CatchupRequest;)LcoeditCoreMessage/CatchupRequest$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/CatchupRequest;
    .locals 1

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/CatchupRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/CatchupRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCatchupType(LcoeditCoreMessage/CatchupType;)V
    .locals 0

    invoke-virtual {p1}, LcoeditCoreMessage/CatchupType;->getNumber()I

    move-result p1

    iput p1, p0, LcoeditCoreMessage/CatchupRequest;->catchupType_:I

    return-void
.end method

.method private setCatchupTypeValue(I)V
    .locals 0

    iput p1, p0, LcoeditCoreMessage/CatchupRequest;->catchupType_:I

    return-void
.end method

.method private setEndCheckpoint(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/CatchupRequest;->endCheckpoint_:J

    return-void
.end method

.method private setStartCheckpoint(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/CatchupRequest;->startCheckpoint_:J

    return-void
.end method

.method private setWorkspaceVersion(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/CatchupRequest;->workspaceVersion_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/CatchupRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/CatchupRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/CatchupRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/CatchupRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/CatchupRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "startCheckpoint_"

    aput-object v0, p1, p3

    const-string p3, "endCheckpoint_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "catchupType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "workspaceVersion_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0002\u0002\u0002\u0003\u000c\u0004\u0002"

    sget-object p3, LcoeditCoreMessage/CatchupRequest;->DEFAULT_INSTANCE:LcoeditCoreMessage/CatchupRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/CatchupRequest$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/CatchupRequest$Builder;-><init>(LcoeditCoreMessage/b;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/CatchupRequest;

    invoke-direct {p1}, LcoeditCoreMessage/CatchupRequest;-><init>()V

    return-object p1

    nop

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

.method public getCatchupType()LcoeditCoreMessage/CatchupType;
    .locals 1

    iget v0, p0, LcoeditCoreMessage/CatchupRequest;->catchupType_:I

    invoke-static {v0}, LcoeditCoreMessage/CatchupType;->forNumber(I)LcoeditCoreMessage/CatchupType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LcoeditCoreMessage/CatchupType;->UNRECOGNIZED:LcoeditCoreMessage/CatchupType;

    :cond_0
    return-object v0
.end method

.method public getCatchupTypeValue()I
    .locals 1

    iget v0, p0, LcoeditCoreMessage/CatchupRequest;->catchupType_:I

    return v0
.end method

.method public getEndCheckpoint()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/CatchupRequest;->endCheckpoint_:J

    return-wide v0
.end method

.method public getStartCheckpoint()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/CatchupRequest;->startCheckpoint_:J

    return-wide v0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/CatchupRequest;->workspaceVersion_:J

    return-wide v0
.end method
