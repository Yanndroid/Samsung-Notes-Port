.class public final LcoeditObjectMessage/Binary;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/BinaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObjectMessage/Binary$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LcoeditObjectMessage/Binary;",
        "LcoeditObjectMessage/Binary$Builder;",
        ">;",
        "LcoeditObjectMessage/BinaryOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHUNK_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/Binary;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_SIZE_FIELD_NUMBER:I = 0x2


# instance fields
.field private chunk_:Lcom/google/protobuf/ByteString;

.field private readSize_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LcoeditObjectMessage/Binary;

    invoke-direct {v0}, LcoeditObjectMessage/Binary;-><init>()V

    sput-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    const-class v1, LcoeditObjectMessage/Binary;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, LcoeditObjectMessage/Binary;->chunk_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static bridge synthetic a(LcoeditObjectMessage/Binary;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/Binary;->clearChunk()V

    return-void
.end method

.method public static bridge synthetic b(LcoeditObjectMessage/Binary;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/Binary;->clearReadSize()V

    return-void
.end method

.method public static bridge synthetic c(LcoeditObjectMessage/Binary;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/Binary;->setChunk(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearChunk()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/Binary;->getDefaultInstance()LcoeditObjectMessage/Binary;

    move-result-object v0

    invoke-virtual {v0}, LcoeditObjectMessage/Binary;->getChunk()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, LcoeditObjectMessage/Binary;->chunk_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearReadSize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LcoeditObjectMessage/Binary;->readSize_:I

    return-void
.end method

.method public static bridge synthetic d(LcoeditObjectMessage/Binary;I)V
    .locals 0

    invoke-direct {p0, p1}, LcoeditObjectMessage/Binary;->setReadSize(I)V

    return-void
.end method

.method public static bridge synthetic e()LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    return-object v0
.end method

.method public static getDefaultInstance()LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    return-object v0
.end method

.method public static newBuilder()LcoeditObjectMessage/Binary$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LcoeditObjectMessage/Binary$Builder;

    return-object v0
.end method

.method public static newBuilder(LcoeditObjectMessage/Binary;)LcoeditObjectMessage/Binary$Builder;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom([B)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LcoeditObjectMessage/Binary;
    .locals 1

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LcoeditObjectMessage/Binary;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LcoeditObjectMessage/Binary;",
            ">;"
        }
    .end annotation

    sget-object v0, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChunk(Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LcoeditObjectMessage/Binary;->chunk_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setReadSize(I)V
    .locals 0

    iput p1, p0, LcoeditObjectMessage/Binary;->readSize_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, LcoeditObjectMessage/Binary$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, LcoeditObjectMessage/Binary;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LcoeditObjectMessage/Binary;

    monitor-enter p2

    :try_start_0
    sget-object p1, LcoeditObjectMessage/Binary;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LcoeditObjectMessage/Binary;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "chunk_"

    aput-object v0, p1, p3

    const-string p3, "readSize_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0004"

    sget-object p3, LcoeditObjectMessage/Binary;->DEFAULT_INSTANCE:LcoeditObjectMessage/Binary;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LcoeditObjectMessage/Binary$Builder;

    invoke-direct {p1, p3}, LcoeditObjectMessage/Binary$Builder;-><init>(LcoeditObjectMessage/a;)V

    return-object p1

    :pswitch_6
    new-instance p1, LcoeditObjectMessage/Binary;

    invoke-direct {p1}, LcoeditObjectMessage/Binary;-><init>()V

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

.method public getChunk()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, LcoeditObjectMessage/Binary;->chunk_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReadSize()I
    .locals 1

    iget v0, p0, LcoeditObjectMessage/Binary;->readSize_:I

    return v0
.end method
