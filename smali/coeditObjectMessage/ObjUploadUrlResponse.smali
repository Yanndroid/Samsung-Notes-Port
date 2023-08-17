.class public final LcoeditObjectMessage/ObjUploadUrlResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/ObjUploadUrlResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditObjectMessage/ObjUploadUrlResponse;",
        "LcoeditObjectMessage/ObjUploadUrlResponse$Builder;",
        ">;",
        "LcoeditObjectMessage/ObjUploadUrlResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

.field public static final OBJ_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/ObjUploadUrlResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_FIELD_NUMBER:I = 0x1

.field public static final UPLOAD_SIGNED_URL_FIELD_NUMBER:I = 0x3


# instance fields
.field private objId_:Ljava/lang/String;

.field private responseResult_:LcoeditObjectMessage/ResponseResult;

.field private uploadSignedUrl_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-direct {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;-><init>()V

    sput-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    const-class v1, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->objId_:Ljava/lang/String;

    iput-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->uploadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditObjectMessage/ObjUploadUrlResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/ObjUploadUrlResponse;->clearObjId()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditObjectMessage/ObjUploadUrlResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/ObjUploadUrlResponse;->clearResponseResult()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditObjectMessage/ObjUploadUrlResponse;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/ObjUploadUrlResponse;->clearUploadSignedUrl()V

    return-void
.end method

.method private clearObjId()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/ObjUploadUrlResponse;->getDefaultInstance()LcoeditObjectMessage/ObjUploadUrlResponse;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->getObjId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->objId_:Ljava/lang/String;

    return-void
.end method

.method private clearResponseResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method

.method private clearUploadSignedUrl()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/ObjUploadUrlResponse;->getDefaultInstance()LcoeditObjectMessage/ObjUploadUrlResponse;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->getUploadSignedUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->uploadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(LcoeditObjectMessage/ObjUploadUrlResponse;LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->mergeResponseResult(LcoeditObjectMessage/ResponseResult;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditObjectMessage/ObjUploadUrlResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->setObjId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditObjectMessage/ObjUploadUrlResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->setObjIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditObjectMessage/ObjUploadUrlResponse;LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->setResponseResult(LcoeditObjectMessage/ResponseResult;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditObjectMessage/ObjUploadUrlResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->setUploadSignedUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditObjectMessage/ObjUploadUrlResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->setUploadSignedUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object v0
.end method

.method private mergeResponseResult(LcoeditObjectMessage/ResponseResult;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/ResponseResult;->getDefaultInstance()LcoeditObjectMessage/ResponseResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->newBuilder(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/ResponseResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult;

    :cond_0
    iput-object p1, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method

.method public static newBuilder()LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditObjectMessage/ObjUploadUrlResponse;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 1

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/ObjUploadUrlResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setObjId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->objId_:Ljava/lang/String;

    return-void
.end method

.method private setObjIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->objId_:Ljava/lang/String;

    return-void
.end method

.method private setResponseResult(LcoeditObjectMessage/ResponseResult;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    return-void
.end method

.method private setUploadSignedUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->uploadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method private setUploadSignedUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->uploadSignedUrl_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditObjectMessage/ObjUploadUrlResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditObjectMessage/ObjUploadUrlResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditObjectMessage/ObjUploadUrlResponse;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditObjectMessage/ObjUploadUrlResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditObjectMessage/ObjUploadUrlResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "responseResult_"

    aput-object v0, p1, p3

    const-string p3, "objId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "uploadSignedUrl_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0208"

    sget-object p3, LcoeditObjectMessage/ObjUploadUrlResponse;->DEFAULT_INSTANCE:LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditObjectMessage/ObjUploadUrlResponse$Builder;

    invoke-direct {p1, p3}, LcoeditObjectMessage/ObjUploadUrlResponse$Builder;-><init>(LcoeditObjectMessage/f;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-direct {p1}, LcoeditObjectMessage/ObjUploadUrlResponse;-><init>()V

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

.method public getObjId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->objId_:Ljava/lang/String;

    return-object v0
.end method

.method public getObjIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->objId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditObjectMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditObjectMessage/ResponseResult;->getDefaultInstance()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUploadSignedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->uploadSignedUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadSignedUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->uploadSignedUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/ObjUploadUrlResponse;->responseResult_:LcoeditObjectMessage/ResponseResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
