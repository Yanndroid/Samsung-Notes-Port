.class public final LnoteSnapMessage/UploadRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/UploadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LnoteSnapMessage/UploadRequest$Builder;,
        LnoteSnapMessage/UploadRequest$RequestCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LnoteSnapMessage/UploadRequest;",
        "LnoteSnapMessage/UploadRequest$Builder;",
        ">;",
        "LnoteSnapMessage/UploadRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final BINARY_FIELD_NUMBER:I = 0x2

.field public static final BINARY_INFO_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LnoteSnapMessage/UploadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private requestCase_:I

.field private request_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LnoteSnapMessage/UploadRequest;

    invoke-direct {v0}, LnoteSnapMessage/UploadRequest;-><init>()V

    sput-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    const-class v1, LnoteSnapMessage/UploadRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    return-void
.end method

.method public static bridge synthetic a(LnoteSnapMessage/UploadRequest;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/UploadRequest;->clearBinary()V

    return-void
.end method

.method public static bridge synthetic b(LnoteSnapMessage/UploadRequest;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/UploadRequest;->clearBinaryInfo()V

    return-void
.end method

.method public static bridge synthetic c(LnoteSnapMessage/UploadRequest;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/UploadRequest;->clearRequest()V

    return-void
.end method

.method private clearBinary()V
    .locals 2

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearBinaryInfo()V
    .locals 2

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRequest()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic d(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/Binary;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/UploadRequest;->mergeBinary(LnoteSnapMessage/Binary;)V

    return-void
.end method

.method public static bridge synthetic e(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/UploadRequest;->mergeBinaryInfo(LnoteSnapMessage/BinaryInfo;)V

    return-void
.end method

.method public static bridge synthetic f(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/Binary;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/UploadRequest;->setBinary(LnoteSnapMessage/Binary;)V

    return-void
.end method

.method public static bridge synthetic g(LnoteSnapMessage/UploadRequest;LnoteSnapMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LnoteSnapMessage/UploadRequest;->setBinaryInfo(LnoteSnapMessage/BinaryInfo;)V

    return-void
.end method

.method public static getDefaultInstance()LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    return-object v0
.end method

.method public static bridge synthetic h()LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    return-object v0
.end method

.method private mergeBinary(LnoteSnapMessage/Binary;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    invoke-static {}, LnoteSnapMessage/Binary;->getDefaultInstance()LnoteSnapMessage/Binary;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    check-cast v0, LnoteSnapMessage/Binary;

    invoke-static {v0}, LnoteSnapMessage/Binary;->newBuilder(LnoteSnapMessage/Binary;)LnoteSnapMessage/Binary$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/Binary$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    :cond_0
    iput-object p1, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    iput v1, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    return-void
.end method

.method private mergeBinaryInfo(LnoteSnapMessage/BinaryInfo;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    invoke-static {}, LnoteSnapMessage/BinaryInfo;->getDefaultInstance()LnoteSnapMessage/BinaryInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0}, LnoteSnapMessage/BinaryInfo;->newBuilder(LnoteSnapMessage/BinaryInfo;)LnoteSnapMessage/BinaryInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/BinaryInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    :cond_0
    iput-object p1, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    iput v1, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    return-void
.end method

.method public static newBuilder()LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LnoteSnapMessage/UploadRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LnoteSnapMessage/UploadRequest;)LnoteSnapMessage/UploadRequest$Builder;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom([B)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/UploadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/UploadRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LnoteSnapMessage/UploadRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBinary(LnoteSnapMessage/Binary;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    return-void
.end method

.method private setBinaryInfo(LnoteSnapMessage/BinaryInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LnoteSnapMessage/UploadRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LnoteSnapMessage/UploadRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LnoteSnapMessage/UploadRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LnoteSnapMessage/UploadRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LnoteSnapMessage/UploadRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "request_"

    aput-object v0, p1, p3

    const-string p3, "requestCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-class p3, LnoteSnapMessage/BinaryInfo;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, LnoteSnapMessage/Binary;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000"

    sget-object p3, LnoteSnapMessage/UploadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/UploadRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LnoteSnapMessage/UploadRequest$Builder;

    invoke-direct {p1, p3}, LnoteSnapMessage/UploadRequest$Builder;-><init>(LnoteSnapMessage/h;)V

    return-object p1

    :pswitch_6
    new-instance p1, LnoteSnapMessage/UploadRequest;

    invoke-direct {p1}, LnoteSnapMessage/UploadRequest;-><init>()V

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

.method public getBinary()LnoteSnapMessage/Binary;
    .locals 2

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    check-cast v0, LnoteSnapMessage/Binary;

    return-object v0

    :cond_0
    invoke-static {}, LnoteSnapMessage/Binary;->getDefaultInstance()LnoteSnapMessage/Binary;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryInfo()LnoteSnapMessage/BinaryInfo;
    .locals 2

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LnoteSnapMessage/UploadRequest;->request_:Ljava/lang/Object;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    return-object v0

    :cond_0
    invoke-static {}, LnoteSnapMessage/BinaryInfo;->getDefaultInstance()LnoteSnapMessage/BinaryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCase()LnoteSnapMessage/UploadRequest$RequestCase;
    .locals 1

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    invoke-static {v0}, LnoteSnapMessage/UploadRequest$RequestCase;->forNumber(I)LnoteSnapMessage/UploadRequest$RequestCase;

    move-result-object v0

    return-object v0
.end method

.method public hasBinary()Z
    .locals 2

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBinaryInfo()Z
    .locals 2

    iget v0, p0, LnoteSnapMessage/UploadRequest;->requestCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
