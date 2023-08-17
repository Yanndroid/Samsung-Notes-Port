.class public final LcoeditCoreMessage/ObjectInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ObjectInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/ObjectInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/ObjectInfo;",
        "LcoeditCoreMessage/ObjectInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/ObjectInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BINARY_INFO_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

.field public static final DOWNLOAD_SIGNED_URL_FIELD_NUMBER:I = 0x3

.field public static final OBJ_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private binaryInfo_:LcoeditCoreMessage/BinaryInfo;

.field private downloadSignedUrl_:Ljava/lang/String;

.field private objId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/ObjectInfo;

    invoke-direct {v0}, LcoeditCoreMessage/ObjectInfo;-><init>()V

    sput-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    const-class v1, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreMessage/ObjectInfo;->objId_:Ljava/lang/String;

    iput-object v0, p0, LcoeditCoreMessage/ObjectInfo;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/ObjectInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ObjectInfo;->clearBinaryInfo()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/ObjectInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ObjectInfo;->clearDownloadSignedUrl()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/ObjectInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ObjectInfo;->clearObjId()V

    return-void
.end method

.method private clearBinaryInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LcoeditCoreMessage/ObjectInfo;->binaryInfo_:LcoeditCoreMessage/BinaryInfo;

    return-void
.end method

.method private clearDownloadSignedUrl()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ObjectInfo;->getDefaultInstance()LcoeditCoreMessage/ObjectInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getDownloadSignedUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/ObjectInfo;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearObjId()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ObjectInfo;->getDefaultInstance()LcoeditCoreMessage/ObjectInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/ObjectInfo;->objId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/ObjectInfo;LcoeditCoreMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ObjectInfo;->mergeBinaryInfo(LcoeditCoreMessage/BinaryInfo;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/ObjectInfo;LcoeditCoreMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ObjectInfo;->setBinaryInfo(LcoeditCoreMessage/BinaryInfo;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/ObjectInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ObjectInfo;->setDownloadSignedUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/ObjectInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ObjectInfo;->setDownloadSignedUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/ObjectInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ObjectInfo;->setObjId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(LcoeditCoreMessage/ObjectInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/ObjectInfo;->setObjIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic j()LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    return-object v0
.end method

.method private mergeBinaryInfo(LcoeditCoreMessage/BinaryInfo;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->binaryInfo_:LcoeditCoreMessage/BinaryInfo;

    if-eqz v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/BinaryInfo;->getDefaultInstance()LcoeditCoreMessage/BinaryInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->binaryInfo_:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0}, LcoeditCoreMessage/BinaryInfo;->newBuilder(LcoeditCoreMessage/BinaryInfo;)LcoeditCoreMessage/BinaryInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/BinaryInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/BinaryInfo;

    :cond_0
    iput-object p1, p0, LcoeditCoreMessage/ObjectInfo;->binaryInfo_:LcoeditCoreMessage/BinaryInfo;

    return-void
.end method

.method public static newBuilder()LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/ObjectInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/ObjectInfo;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/ObjectInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBinaryInfo(LcoeditCoreMessage/BinaryInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ObjectInfo;->binaryInfo_:LcoeditCoreMessage/BinaryInfo;

    return-void
.end method

.method private setDownloadSignedUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ObjectInfo;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method private setDownloadSignedUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/ObjectInfo;->downloadSignedUrl_:Ljava/lang/String;

    return-void
.end method

.method private setObjId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/ObjectInfo;->objId_:Ljava/lang/String;

    return-void
.end method

.method private setObjIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/ObjectInfo;->objId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/ObjectInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/ObjectInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/ObjectInfo;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/ObjectInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/ObjectInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "objId_"

    aput-object v0, p1, p3

    const-string p3, "binaryInfo_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "downloadSignedUrl_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\u0208"

    sget-object p3, LcoeditCoreMessage/ObjectInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/ObjectInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/ObjectInfo$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/ObjectInfo$Builder;-><init>(LcoeditCoreMessage/h;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/ObjectInfo;

    invoke-direct {p1}, LcoeditCoreMessage/ObjectInfo;-><init>()V

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

.method public getBinaryInfo()LcoeditCoreMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->binaryInfo_:LcoeditCoreMessage/BinaryInfo;

    if-nez v0, :cond_0

    invoke-static {}, LcoeditCoreMessage/BinaryInfo;->getDefaultInstance()LcoeditCoreMessage/BinaryInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDownloadSignedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->downloadSignedUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadSignedUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->downloadSignedUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getObjId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->objId_:Ljava/lang/String;

    return-object v0
.end method

.method public getObjIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->objId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/ObjectInfo;->binaryInfo_:LcoeditCoreMessage/BinaryInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
