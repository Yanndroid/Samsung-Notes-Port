.class public final LnoteSnapMessage/NoteInfoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/NoteInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LnoteSnapMessage/NoteInfoResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LnoteSnapMessage/NoteInfoResponse;",
        "LnoteSnapMessage/NoteInfoResponse$Builder;",
        ">;",
        "LnoteSnapMessage/NoteInfoResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHECKPOINT_FIELD_NUMBER:I = 0x3

.field public static final COMMIT_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

.field public static final MODIFIEDTIME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LnoteSnapMessage/NoteInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private checkpoint_:J

.field private commitId_:Ljava/lang/String;

.field private modifiedtime_:J

.field private responseResult_:LnoteSnapMessage/ResponseResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-direct {v0}, LnoteSnapMessage/NoteInfoResponse;-><init>()V

    sput-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    const-class v1, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->commitId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LnoteSnapMessage/NoteInfoResponse;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/NoteInfoResponse;->clearCheckpoint()V

    return-void
.end method

.method public static bridge synthetic b(LnoteSnapMessage/NoteInfoResponse;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/NoteInfoResponse;->clearCommitId()V

    return-void
.end method

.method public static bridge synthetic c(LnoteSnapMessage/NoteInfoResponse;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/NoteInfoResponse;->clearModifiedtime()V

    return-void
.end method

.method private clearCheckpoint()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LnoteSnapMessage/NoteInfoResponse;->checkpoint_:J

    return-void
.end method

.method private clearCommitId()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/NoteInfoResponse;->getDefaultInstance()LnoteSnapMessage/NoteInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getCommitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->commitId_:Ljava/lang/String;

    return-void
.end method

.method private clearModifiedtime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LnoteSnapMessage/NoteInfoResponse;->modifiedtime_:J

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->responseResult_:LnoteSnapMessage/ResponseResult;

    return-void
.end method

.method public static bridge synthetic d(LnoteSnapMessage/NoteInfoResponse;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/NoteInfoResponse;->clearResponseResult()V

    return-void
.end method

.method public static bridge synthetic e(LnoteSnapMessage/NoteInfoResponse;LnoteSnapMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/NoteInfoResponse;->mergeResponseResult(LnoteSnapMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic f(LnoteSnapMessage/NoteInfoResponse;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnapMessage/NoteInfoResponse;->setCheckpoint(J)V

    return-void
.end method

.method public static bridge synthetic g(LnoteSnapMessage/NoteInfoResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/NoteInfoResponse;->setCommitId(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultInstance()LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    return-object v0
.end method

.method public static bridge synthetic h(LnoteSnapMessage/NoteInfoResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/NoteInfoResponse;->setCommitIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic i(LnoteSnapMessage/NoteInfoResponse;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnapMessage/NoteInfoResponse;->setModifiedtime(J)V

    return-void
.end method

.method public static bridge synthetic j(LnoteSnapMessage/NoteInfoResponse;LnoteSnapMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/NoteInfoResponse;->setResponseResult(LnoteSnapMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic k()LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    return-object v0
.end method

.method private mergeResponseResult(LnoteSnapMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->responseResult_:LnoteSnapMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LnoteSnapMessage/ResponseResult;->getDefaultInstance()LnoteSnapMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->responseResult_:LnoteSnapMessage/ResponseResult;

    invoke-static {v0}, LnoteSnapMessage/ResponseResult;->newBuilder(LnoteSnapMessage/ResponseResult;)LnoteSnapMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LnoteSnapMessage/NoteInfoResponse;->responseResult_:LnoteSnapMessage/ResponseResult;

    return-void
.end method

.method public static newBuilder()LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LnoteSnapMessage/NoteInfoResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LnoteSnapMessage/NoteInfoResponse;)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom([B)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/NoteInfoResponse;
    .locals 1

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/NoteInfoResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LnoteSnapMessage/NoteInfoResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCheckpoint(J)V
    .locals 0

    iput-wide p1, p0, LnoteSnapMessage/NoteInfoResponse;->checkpoint_:J

    return-void
.end method

.method private setCommitId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LnoteSnapMessage/NoteInfoResponse;->commitId_:Ljava/lang/String;

    return-void
.end method

.method private setCommitIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LnoteSnapMessage/NoteInfoResponse;->commitId_:Ljava/lang/String;

    return-void
.end method

.method private setModifiedtime(J)V
    .locals 0

    iput-wide p1, p0, LnoteSnapMessage/NoteInfoResponse;->modifiedtime_:J

    return-void
.end method

.method private setResponseResult(LnoteSnapMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LnoteSnapMessage/NoteInfoResponse;->responseResult_:LnoteSnapMessage/ResponseResult;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LnoteSnapMessage/NoteInfoResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LnoteSnapMessage/NoteInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LnoteSnapMessage/NoteInfoResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LnoteSnapMessage/NoteInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LnoteSnapMessage/NoteInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "commitId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "checkpoint_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "modifiedtime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0002\u0004\u0002"

    sget-object p3, LnoteSnapMessage/NoteInfoResponse;->DEFAULT_INSTANCE:LnoteSnapMessage/NoteInfoResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LnoteSnapMessage/NoteInfoResponse$Builder;

    invoke-direct {p1, p3}, LnoteSnapMessage/NoteInfoResponse$Builder;-><init>(LnoteSnapMessage/f;)V

    return-object p1

    :pswitch_6
    new-instance p1, LnoteSnapMessage/NoteInfoResponse;

    invoke-direct {p1}, LnoteSnapMessage/NoteInfoResponse;-><init>()V

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

.method public getCheckpoint()J
    .locals 2

    iget-wide v0, p0, LnoteSnapMessage/NoteInfoResponse;->checkpoint_:J

    return-wide v0
.end method

.method public getCommitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->commitId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommitIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->commitId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedtime()J
    .locals 2

    iget-wide v0, p0, LnoteSnapMessage/NoteInfoResponse;->modifiedtime_:J

    return-wide v0
.end method

.method public getResponseResult()LnoteSnapMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->responseResult_:LnoteSnapMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LnoteSnapMessage/ResponseResult;->getDefaultInstance()LnoteSnapMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, LnoteSnapMessage/NoteInfoResponse;->responseResult_:LnoteSnapMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
