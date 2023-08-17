.class public final LcoeditObjectMessage/DownloadStrokeResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/DownloadStrokeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditObjectMessage/DownloadStrokeResponse;",
        "LcoeditObjectMessage/DownloadStrokeResponse$Builder;",
        ">;",
        "LcoeditObjectMessage/DownloadStrokeResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final BINARY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/DownloadStrokeResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private binary_:LcoeditObjectMessage/Binary;

.field private responseResult_:LcoeditObjectMessage/ResponseResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-direct {v0}, LcoeditObjectMessage/DownloadStrokeResponse;-><init>()V

    sput-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    const-class v1, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(LcoeditObjectMessage/DownloadStrokeResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/DownloadStrokeResponse;->clearBinary()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditObjectMessage/DownloadStrokeResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/DownloadStrokeResponse;->clearResponseResult()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/Binary;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->mergeBinary(LcoeditObjectMessage/Binary;)V

    return-void
.end method

.method private clearBinary()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->binary_:LcoeditObjectMessage/Binary;

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method

.method public static bridge synthetic d(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->mergeResponseResult(LcoeditObjectMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/Binary;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->setBinary(LcoeditObjectMessage/Binary;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->setResponseResult(LcoeditObjectMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic g()LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    return-object v0
.end method

.method private mergeBinary(LcoeditObjectMessage/Binary;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->binary_:LcoeditObjectMessage/Binary;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/Binary;->getDefaultInstance()LcoeditObjectMessage/Binary;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->binary_:LcoeditObjectMessage/Binary;

    invoke-static {v0}, LcoeditObjectMessage/Binary;->newBuilder(LcoeditObjectMessage/Binary;)LcoeditObjectMessage/Binary$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/Binary$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/Binary;

    :cond_0
    iput-object p1, p0, LcoeditObjectMessage/DownloadStrokeResponse;->binary_:LcoeditObjectMessage/Binary;

    return-void
.end method

.method private mergeResponseResult(LcoeditObjectMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/ResponseResult;->getDefaultInstance()LcoeditObjectMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->newBuilder(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LcoeditObjectMessage/DownloadStrokeResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method

.method public static newBuilder()LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditObjectMessage/DownloadStrokeResponse;)LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/DownloadStrokeResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/DownloadStrokeResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBinary(LcoeditObjectMessage/Binary;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/DownloadStrokeResponse;->binary_:LcoeditObjectMessage/Binary;

    return-void
.end method

.method private setResponseResult(LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/DownloadStrokeResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditObjectMessage/DownloadStrokeResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditObjectMessage/DownloadStrokeResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditObjectMessage/DownloadStrokeResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditObjectMessage/DownloadStrokeResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditObjectMessage/DownloadStrokeResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "binary_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    sget-object p3, LcoeditObjectMessage/DownloadStrokeResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditObjectMessage/DownloadStrokeResponse$Builder;

    invoke-direct {p1, p3}, LcoeditObjectMessage/DownloadStrokeResponse$Builder;-><init>(LcoeditObjectMessage/d;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-direct {p1}, LcoeditObjectMessage/DownloadStrokeResponse;-><init>()V

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

.method public getBinary()LcoeditObjectMessage/Binary;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->binary_:LcoeditObjectMessage/Binary;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/Binary;->getDefaultInstance()LcoeditObjectMessage/Binary;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponseResult()LcoeditObjectMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/ResponseResult;->getDefaultInstance()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBinary()Z
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->binary_:LcoeditObjectMessage/Binary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/DownloadStrokeResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
