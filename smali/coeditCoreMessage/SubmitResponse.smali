.class public final LcoeditCoreMessage/SubmitResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/SubmitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/SubmitResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/SubmitResponse;",
        "LcoeditCoreMessage/SubmitResponse$Builder;",
        ">;",
        "LcoeditCoreMessage/SubmitResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHECKPOINT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/SubmitResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private checkpoint_:J

.field private responseResult_:LcoeditCoreMessage/ResponseResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/SubmitResponse;

    invoke-direct {v0}, LcoeditCoreMessage/SubmitResponse;-><init>()V

    sput-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    const-class v1, LcoeditCoreMessage/SubmitResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/SubmitResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitResponse;->clearCheckpoint()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/SubmitResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/SubmitResponse;->clearResponseResult()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/SubmitResponse;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitResponse;->mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method private clearCheckpoint()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/SubmitResponse;->checkpoint_:J

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/SubmitResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/SubmitResponse;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/SubmitResponse;->setCheckpoint(J)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/SubmitResponse;LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/SubmitResponse;->setResponseResult(LcoeditCoreMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic f()LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    return-object v0
.end method

.method private mergeResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/SubmitResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/SubmitResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->newBuilder(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/SubmitResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method

.method public static newBuilder()LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/SubmitResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/SubmitResponse;)LcoeditCoreMessage/SubmitResponse$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/SubmitResponse;
    .locals 1

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/SubmitResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/SubmitResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCheckpoint(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/SubmitResponse;->checkpoint_:J

    return-void
.end method

.method private setResponseResult(LcoeditCoreMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/SubmitResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/SubmitResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/SubmitResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/SubmitResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/SubmitResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/SubmitResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "checkpoint_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u0002"

    sget-object p3, LcoeditCoreMessage/SubmitResponse;->DEFAULT_INSTANCE:LcoeditCoreMessage/SubmitResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/SubmitResponse$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/SubmitResponse$Builder;-><init>(LcoeditCoreMessage/q;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/SubmitResponse;

    invoke-direct {p1}, LcoeditCoreMessage/SubmitResponse;-><init>()V

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

    iget-wide v0, p0, LcoeditCoreMessage/SubmitResponse;->checkpoint_:J

    return-wide v0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/SubmitResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->getDefaultInstance()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/SubmitResponse;->responseResult_:LcoeditCoreMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
