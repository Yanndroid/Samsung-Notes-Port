.class public final LcoeditObjectMessage/SignedDownloadUrlResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/SignedDownloadUrlResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditObjectMessage/SignedDownloadUrlResponse;",
        "LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;",
        ">;",
        "LcoeditObjectMessage/SignedDownloadUrlResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final BINARY_INFO_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

.field public static final DOWNLOAD_SIGNED_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/SignedDownloadUrlResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private binaryInfo_:LcoeditObjectMessage/BinaryInfo;

.field private downloadSignedUrl_:Ljava/lang/String;

.field private responseResult_:LcoeditObjectMessage/ResponseResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-direct {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;-><init>()V

    sput-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    const-class v1, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditObjectMessage/SignedDownloadUrlResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->clearBinaryInfo()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditObjectMessage/SignedDownloadUrlResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->clearDownloadSignedUrl()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditObjectMessage/SignedDownloadUrlResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->clearResponseResult()V

    return-void
.end method

.method private clearBinaryInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->binaryInfo_:LcoeditObjectMessage/BinaryInfo;

    return-void
.end method

.method private clearDownloadSignedUrl()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/SignedDownloadUrlResponse;->getDefaultInstance()LcoeditObjectMessage/SignedDownloadUrlResponse;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->getDownloadSignedUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method

.method public static bridge synthetic d(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->mergeBinaryInfo(LcoeditObjectMessage/BinaryInfo;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->mergeResponseResult(LcoeditObjectMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->setBinaryInfo(LcoeditObjectMessage/BinaryInfo;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditObjectMessage/SignedDownloadUrlResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->setDownloadSignedUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditObjectMessage/SignedDownloadUrlResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->setDownloadSignedUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->setResponseResult(LcoeditObjectMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object v0
.end method

.method private mergeBinaryInfo(LcoeditObjectMessage/BinaryInfo;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->binaryInfo_:LcoeditObjectMessage/BinaryInfo;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/BinaryInfo;->getDefaultInstance()LcoeditObjectMessage/BinaryInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->binaryInfo_:LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0}, LcoeditObjectMessage/BinaryInfo;->newBuilder(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/BinaryInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/BinaryInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/BinaryInfo;

    :cond_0
    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->binaryInfo_:LcoeditObjectMessage/BinaryInfo;

    return-void
.end method

.method private mergeResponseResult(LcoeditObjectMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/ResponseResult;->getDefaultInstance()LcoeditObjectMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->newBuilder(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method

.method public static newBuilder()LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditObjectMessage/SignedDownloadUrlResponse;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/SignedDownloadUrlResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBinaryInfo(LcoeditObjectMessage/BinaryInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->binaryInfo_:LcoeditObjectMessage/BinaryInfo;

    return-void
.end method

.method private setDownloadSignedUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method private setDownloadSignedUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method private setResponseResult(LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditObjectMessage/SignedDownloadUrlResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditObjectMessage/SignedDownloadUrlResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditObjectMessage/SignedDownloadUrlResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditObjectMessage/SignedDownloadUrlResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditObjectMessage/SignedDownloadUrlResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "binaryInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "downloadSignedUrl_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u0208"

    sget-object p3, LcoeditObjectMessage/SignedDownloadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;

    invoke-direct {p1, p3}, LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;-><init>(LcoeditObjectMessage/i;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-direct {p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;-><init>()V

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

.method public getBinaryInfo()LcoeditObjectMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->binaryInfo_:LcoeditObjectMessage/BinaryInfo;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/BinaryInfo;->getDefaultInstance()LcoeditObjectMessage/BinaryInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDownloadSignedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->downloadSignedUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadSignedUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->downloadSignedUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditObjectMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/ResponseResult;->getDefaultInstance()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->binaryInfo_:LcoeditObjectMessage/BinaryInfo;

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

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
