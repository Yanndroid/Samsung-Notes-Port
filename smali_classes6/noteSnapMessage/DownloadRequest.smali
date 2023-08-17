.class public final LnoteSnapMessage/DownloadRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/DownloadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LnoteSnapMessage/DownloadRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "LnoteSnapMessage/DownloadRequest;",
        "LnoteSnapMessage/DownloadRequest$Builder;",
        ">;",
        "LnoteSnapMessage/DownloadRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "LnoteSnapMessage/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LnoteSnapMessage/DownloadRequest;

    invoke-direct {v0}, LnoteSnapMessage/DownloadRequest;-><init>()V

    sput-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    const-class v1, LnoteSnapMessage/DownloadRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    return-object v0
.end method

.method public static getDefaultInstance()LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    return-object v0
.end method

.method public static newBuilder()LnoteSnapMessage/DownloadRequest$Builder;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, LnoteSnapMessage/DownloadRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(LnoteSnapMessage/DownloadRequest;)LnoteSnapMessage/DownloadRequest$Builder;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom([B)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)LnoteSnapMessage/DownloadRequest;
    .locals 1

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, LnoteSnapMessage/DownloadRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "LnoteSnapMessage/DownloadRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, LnoteSnapMessage/DownloadRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, LnoteSnapMessage/DownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, LnoteSnapMessage/DownloadRequest;

    monitor-enter p2

    :try_start_0
    sget-object p1, LnoteSnapMessage/DownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, LnoteSnapMessage/DownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    return-object p1

    :pswitch_4
    const-string p1, "\u0000\u0000"

    sget-object p3, LnoteSnapMessage/DownloadRequest;->DEFAULT_INSTANCE:LnoteSnapMessage/DownloadRequest;

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, LnoteSnapMessage/DownloadRequest$Builder;

    invoke-direct {p1, p2}, LnoteSnapMessage/DownloadRequest$Builder;-><init>(LnoteSnapMessage/c;)V

    return-object p1

    :pswitch_6
    new-instance p1, LnoteSnapMessage/DownloadRequest;

    invoke-direct {p1}, LnoteSnapMessage/DownloadRequest;-><init>()V

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
