.class public final LcoeditCoreMessage/BinaryInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/BinaryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCoreMessage/BinaryInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditCoreMessage/BinaryInfo;",
        "LcoeditCoreMessage/BinaryInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/BinaryInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

.field public static final HASH_FIELD_NUMBER:I = 0x1

.field public static final MIMETYPE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/BinaryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE_FIELD_NUMBER:I = 0x2


# instance fields
.field private hash_:Ljava/lang/String;

.field private mimetype_:Ljava/lang/String;

.field private size_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditCoreMessage/BinaryInfo;

    invoke-direct {v0}, LcoeditCoreMessage/BinaryInfo;-><init>()V

    sput-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    const-class v1, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LcoeditCoreMessage/BinaryInfo;->hash_:Ljava/lang/String;

    iput-object v0, p0, LcoeditCoreMessage/BinaryInfo;->mimetype_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(LcoeditCoreMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/BinaryInfo;->clearHash()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditCoreMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/BinaryInfo;->clearMimetype()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditCoreMessage/BinaryInfo;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/BinaryInfo;->clearSize()V

    return-void
.end method

.method private clearHash()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/BinaryInfo;->getDefaultInstance()LcoeditCoreMessage/BinaryInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/BinaryInfo;->hash_:Ljava/lang/String;

    return-void
.end method

.method private clearMimetype()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/BinaryInfo;->getDefaultInstance()LcoeditCoreMessage/BinaryInfo;

    move-result-object v0

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getMimetype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcoeditCoreMessage/BinaryInfo;->mimetype_:Ljava/lang/String;

    return-void
.end method

.method private clearSize()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LcoeditCoreMessage/BinaryInfo;->size_:J

    return-void
.end method

.method public static bridge synthetic d(LcoeditCoreMessage/BinaryInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/BinaryInfo;->setHash(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(LcoeditCoreMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/BinaryInfo;->setHashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic f(LcoeditCoreMessage/BinaryInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/BinaryInfo;->setMimetype(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(LcoeditCoreMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditCoreMessage/BinaryInfo;->setMimetypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    return-object v0
.end method

.method public static bridge synthetic h(LcoeditCoreMessage/BinaryInfo;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCoreMessage/BinaryInfo;->setSize(J)V

    return-void
.end method

.method public static bridge synthetic i()LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    return-object v0
.end method

.method public static newBuilder()LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditCoreMessage/BinaryInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditCoreMessage/BinaryInfo;)LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditCoreMessage/BinaryInfo;
    .locals 1

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditCoreMessage/BinaryInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditCoreMessage/BinaryInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHash(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/BinaryInfo;->hash_:Ljava/lang/String;

    return-void
.end method

.method private setHashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/BinaryInfo;->hash_:Ljava/lang/String;

    return-void
.end method

.method private setMimetype(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditCoreMessage/BinaryInfo;->mimetype_:Ljava/lang/String;

    return-void
.end method

.method private setMimetypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LcoeditCoreMessage/BinaryInfo;->mimetype_:Ljava/lang/String;

    return-void
.end method

.method private setSize(J)V
    .locals 0

    iput-wide p1, p0, LcoeditCoreMessage/BinaryInfo;->size_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditCoreMessage/BinaryInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditCoreMessage/BinaryInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditCoreMessage/BinaryInfo;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditCoreMessage/BinaryInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditCoreMessage/BinaryInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "hash_"

    aput-object v0, p1, p3

    const-string p3, "size_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "mimetype_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0208"

    sget-object p3, LcoeditCoreMessage/BinaryInfo;->DEFAULT_INSTANCE:LcoeditCoreMessage/BinaryInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditCoreMessage/BinaryInfo$Builder;

    invoke-direct {p1, p3}, LcoeditCoreMessage/BinaryInfo$Builder;-><init>(LcoeditCoreMessage/a;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditCoreMessage/BinaryInfo;

    invoke-direct {p1}, LcoeditCoreMessage/BinaryInfo;-><init>()V

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

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/BinaryInfo;->hash_:Ljava/lang/String;

    return-object v0
.end method

.method public getHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/BinaryInfo;->hash_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/BinaryInfo;->mimetype_:Ljava/lang/String;

    return-object v0
.end method

.method public getMimetypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditCoreMessage/BinaryInfo;->mimetype_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, LcoeditCoreMessage/BinaryInfo;->size_:J

    return-wide v0
.end method
