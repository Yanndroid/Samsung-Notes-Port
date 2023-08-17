.class public final LcoeditObjectMessage/SignedDownloadUrlRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/SignedDownloadUrlRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditObjectMessage/SignedDownloadUrlRequest;",
        "LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;",
        ">;",
        "LcoeditObjectMessage/SignedDownloadUrlRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

.field public static final OBJ_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/SignedDownloadUrlRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private objId_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-direct {v0}, LcoeditObjectMessage/SignedDownloadUrlRequest;-><init>()V

    sput-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    const-class v1, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlRequest;->objId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditObjectMessage/SignedDownloadUrlRequest;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/SignedDownloadUrlRequest;->clearObjId()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditObjectMessage/SignedDownloadUrlRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlRequest;->setObjId(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(LcoeditObjectMessage/SignedDownloadUrlRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/SignedDownloadUrlRequest;->setObjIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearObjId()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/SignedDownloadUrlRequest;->getDefaultInstance()LcoeditObjectMessage/SignedDownloadUrlRequest;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlRequest;->getObjId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlRequest;->objId_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d()LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object v0
.end method

.method public static newBuilder()LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditObjectMessage/SignedDownloadUrlRequest;)LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/SignedDownloadUrlRequest;
    .locals 1

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/SignedDownloadUrlRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setObjId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlRequest;->objId_:Ljava/lang/String;

    return-void
.end method

.method private setObjIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditObjectMessage/SignedDownloadUrlRequest;->objId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, LcoeditObjectMessage/SignedDownloadUrlRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditObjectMessage/SignedDownloadUrlRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditObjectMessage/SignedDownloadUrlRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditObjectMessage/SignedDownloadUrlRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditObjectMessage/SignedDownloadUrlRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "objId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    sget-object p3, LcoeditObjectMessage/SignedDownloadUrlRequest;->DEFAULT_INSTANCE:LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;

    invoke-direct {p1, p3}, LcoeditObjectMessage/SignedDownloadUrlRequest$Builder;-><init>(LcoeditObjectMessage/h;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-direct {p1}, LcoeditObjectMessage/SignedDownloadUrlRequest;-><init>()V

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

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlRequest;->objId_:Ljava/lang/String;

    return-object v0
.end method

.method public getObjIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/SignedDownloadUrlRequest;->objId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
